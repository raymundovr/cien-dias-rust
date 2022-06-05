use reqwest::{get};
use jsonwebtoken::{decode, decode_header, DecodingKey, jwk::{AlgorithmParameters, JwkSet}, Validation};
use serde::{Deserialize, Serialize};

type GenericError = Box<dyn std::error::Error>;
type GenericResult<T> = Result<T, GenericError>;

#[derive(Debug, Deserialize, Serialize, PartialEq)]
pub struct Claims {
    pub aud: String,
    pub iss: String,
}

pub struct Auth0Validation {
    claims: Claims,
    jwks_uri: String,
    jwks: Option<JwkSet>,
}

impl Auth0Validation {
    pub fn new(jwks_uri: String, claims: Claims) -> Self {
        Auth0Validation {
            claims,
            jwks_uri,
            jwks: None,
        }
    }

    pub async fn is_token_valid(&mut self, token: &str) -> GenericResult<bool> {
        if self.jwks.is_none() {
            let jwks = self.get_jkws().await?;
            self.jwks = Some(jwks);
        }

        let kid = decode_header(&token)?.kid.expect("Invalid Token: Cannot get KID");
        
        match self.jwks.as_ref().unwrap().find(&kid) {
            None => Ok(false),
            Some(jwk) => {
                match jwk.algorithm {
                    AlgorithmParameters::RSA(ref rsa) => {
                        let decoding_key = DecodingKey::from_rsa_components(&rsa.n, &rsa.e).unwrap();
                        let mut validation = Validation::new(jwk.common.algorithm.unwrap());
                        validation.validate_exp = false;
                        let decoded_token = decode::<Claims>(&token, &decoding_key, &validation)?;
                        println!("{:?}", decoded_token);

                        Ok(self.claims == decoded_token.claims)
                    },
                    _ => unimplemented!("Have not implemented other than RSA!")
                }
            }
        }
    }

    async fn get_jkws(&self) -> GenericResult<JwkSet> {
        let jwks_resp = get(&self.jwks_uri).await?.text().await?;
        let jwks: JwkSet = serde_json::from_str(&jwks_resp)?;
        Ok(jwks)
    }
}

mod auth0;

use std::env;
use auth0::{
    Auth0Validation,
    Claims
};

/*
    audience: 'https://saludario.vasquezruiz.com',
    issuer: 'https://vasquezruiz.eu.auth0.com/',
*/

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let jwks_uri = env::var("JWKS_URI").expect("Must set JWKS_URI");
    let token = r#"some-token-here";
    println!("{:?}", jwks_uri);

    let mut auth0_validation = Auth0Validation::new(
        jwks_uri,
        Claims {
            aud: "https://saludario.vasquezruiz.com".to_string(),
            iss: "https://vasquezruiz.eu.auth0.com/".to_string(),
        }
    );

    println!("Is valid {:?}", auth0_validation.is_token_valid(&token).await);

    /* let jwks_resp = get(&jwks_uri).await?.text().await?;
    let jwks: JwkSet = serde_json::from_str(&jwks_resp)?;
    
    
    let kid = decode_header(token)?.kid.expect("Cannot get KID");    
    if let Some(jwk) = jwks.find(&kid) {
        match jwk.algorithm {
            AlgorithmParameters::RSA(ref rsa) => {
                let decoding_key = DecodingKey::from_rsa_components(&rsa.n, &rsa.e).unwrap();
                let mut validation = Validation::new(jwk.common.algorithm.unwrap());
                validation.validate_exp = false;
                let decoded_token = decode::<HashMap<String, serde_json::Value>>(token, &decoding_key, &validation);
                println!("Decoded Token {:?}", decoded_token?);
            },
            _ => unreachable!("Have no implemented other alg"),
        }
    } */
    Ok(())
}

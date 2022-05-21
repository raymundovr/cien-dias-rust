use jsonwebtoken::{encode, Header, EncodingKey, errors::Error};
use serde::{Deserialize, Serialize};

#[derive(Debug, Deserialize, Serialize)]
pub struct Claims {
    #[serde(rename="iss")]
    issuer: String,
}

pub fn generate_token() -> Result<String, Error> {
    let claims = Claims {
        issuer: String::from("auth.vasquezruiz.me"),
    };

    encode(&Header::default(), &claims, &EncodingKey::from_secret("secret: &[u8]".as_ref()))
}
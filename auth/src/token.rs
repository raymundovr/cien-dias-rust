use jsonwebtoken::{encode, EncodingKey, Header};
use serde::{Deserialize, Serialize};

#[derive(Debug, Deserialize, Serialize)]
pub struct Claims {
    #[serde(rename = "iss")]
    issuer: String,
    name: String,
}

pub fn generate(username: &str) -> Result<String, jsonwebtoken::errors::Error> {
    let claims = Claims {
        issuer: "auth.vasquezruiz.me".to_string(),
        name: username.to_string(),
    };

    encode(
        &Header::default(),
        &claims,
        &EncodingKey::from_secret(b"secret: &[u8]"),
    )
}

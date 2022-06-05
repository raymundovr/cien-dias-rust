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
    let token = r#"eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6IllzZ0JtNWk2TDhIRjFFbjZXV2gwSCJ9.eyJpc3MiOiJodHRwczovL3Zhc3F1ZXpydWl6LmV1LmF1dGgwLmNvbS8iLCJzdWIiOiJVOHhzcEplUEtNQjhabUpoM2ZjZDNIM0M1ZlptMUh1ZkBjbGllbnRzIiwiYXVkIjoiaHR0cHM6Ly9zYWx1ZGFyaW8udmFzcXVlenJ1aXouY29tIiwiaWF0IjoxNjU0Mjg1ODcwLCJleHAiOjE2NTQzNzIyNzAsImF6cCI6IlU4eHNwSmVQS01COFptSmgzZmNkM0gzQzVmWm0xSHVmIiwiZ3R5IjoiY2xpZW50LWNyZWRlbnRpYWxzIn0.DxJmn6AHb1x_paJxkk405MKv42Lt87_kobafzceV3KrPSbVaP3sEjSMPKII6EAeftF1-qcOgh9EngMLVYb7_gOzb1T2PFXq9mmd1SYSYdk0jfG8acQ1t__L1IqOxcV3chX3aUuERL5yWEglEOKV43_qtCihMHhU51GTr_oEuebZ7auuT6A-mVDjJdHefaT6EZx8af_307nfeik-cRij4sFpkL-ZIntP3E_wvcu9voCP-wL9fzIkQEuE32CIxGgBoNNImjZ1prqjH41Rg-IfuHLvAJpqkmiB2E5KoU9LEspXn1gpC8DC1v1cW7XfydzzcXpUOqHMuQgAa_LEy5fwcag"#;
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

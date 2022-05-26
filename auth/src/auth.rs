use crate::token::generate;
use actix_web::{post, web, HttpResponse, Responder};
use serde::{Deserialize, Serialize};
use serde_json::json;

#[derive(Debug, Deserialize, Serialize)]
struct Credentials {
    username: String,
    password: String,
}

#[derive(Debug, Deserialize, Serialize, PartialEq)]
struct TokenResponse {
    success: bool,
    #[serde(skip_serializing_if = "Option::is_none")]
    token: Option<String>,
}

#[post("/login")]
async fn login(data: web::Json<Credentials>) -> impl Responder {
    if data.username == "ray" && data.password == "test" {
        return match generate(&data.username) {
            Ok(token) => HttpResponse::Ok().json(json!(TokenResponse {
                success: true,
                token: Some(token)
            })),
            Err(_) => HttpResponse::InternalServerError().json(json!(TokenResponse {
                success: false,
                token: None
            })),
        };
    }

    HttpResponse::Unauthorized().json(json!(TokenResponse {
        success: false,
        token: None
    }))
}

#[cfg(test)]
mod test {
    use super::*;
    use actix_web::{test, App};

    #[actix_web::test]
    async fn test_login_right_credentials() {
        let app = test::init_service(App::new().service(login)).await;

        let credentials = Credentials {
            username: "ray".to_string(),
            password: "test".to_string(),
        };

        let req = test::TestRequest::post()
            .uri("/login")
            .set_json(credentials)
            .to_request();
        let resp: TokenResponse = test::call_and_read_body_json(&app, req).await;
        assert_eq!(resp.success, true);
        assert!(resp.token.is_some());
    }

    #[actix_web::test]
    async fn test_login_incorrect_credentials() {
        let app = test::init_service(App::new().service(login)).await;
        let credentials = Credentials {
            username: "something".to_string(),
            password: "wrong".to_string(),
        };
        let req = test::TestRequest::post()
            .uri("/login")
            .set_json(credentials)
            .to_request();
        let resp = test::call_service(&app, req).await;

        assert_eq!(resp.status(), 401);
    }
}

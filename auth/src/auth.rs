use crate::token::generate;
use actix_session::Session;
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

#[post("/login/token")]
async fn login_token(data: web::Json<Credentials>) -> impl Responder {
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

#[post("/login/session")]
async fn login_session(
    data: web::Json<Credentials>,
    session: Session,
) -> Result<HttpResponse, actix_web::Error> {
    if data.username == "ray" && data.password == "test" {
        session.insert(
            "auth.session",
            TokenResponse {
                success: true,
                token: None,
            },
        )?;

        return Ok(HttpResponse::Ok().finish());
    }
    Ok(HttpResponse::Unauthorized().finish())
}

#[cfg(test)]
mod test {
    use super::*;
    use actix_session::{storage::CookieSessionStore, SessionMiddleware};
    use actix_web::{cookie::Key, test, App};

    #[actix_web::test]
    async fn test_login_right_credentials() {
        let app = test::init_service(App::new().service(login_token)).await;

        let credentials = Credentials {
            username: "ray".to_string(),
            password: "test".to_string(),
        };

        let req = test::TestRequest::post()
            .uri("/login/token")
            .set_json(credentials)
            .to_request();
        let resp: TokenResponse = test::call_and_read_body_json(&app, req).await;
        assert_eq!(resp.success, true);
        assert!(resp.token.is_some());
    }

    #[actix_web::test]
    async fn test_login_incorrect_credentials() {
        let app = test::init_service(App::new().service(login_token)).await;
        let credentials = Credentials {
            username: "something".to_string(),
            password: "wrong".to_string(),
        };
        let req = test::TestRequest::post()
            .uri("/login/token")
            .set_json(credentials)
            .to_request();
        let resp = test::call_service(&app, req).await;

        assert_eq!(resp.status(), 401);
    }

    #[actix_web::test]
    async fn test_login_session() {
        let app = test::init_service(
            App::new()
                .wrap(SessionMiddleware::new(
                    CookieSessionStore::default(),
                    Key::generate(),
                ))
                .service(login_session),
        )
        .await;
        let credentials = Credentials {
            username: "ray".to_string(),
            password: "test".to_string(),
        };
        let req = test::TestRequest::post()
            .uri("/login/session")
            .set_json(json!(credentials))
            .to_request();
        let resp = test::call_service(&app, req).await;
        let set_cookie_header = resp.headers().get("set-cookie");
        assert!(set_cookie_header.is_some());
    }

    #[actix_web::test]
    async fn test_incorrect_login_session() {
        let app = test::init_service(
            App::new()
                .wrap(SessionMiddleware::new(
                    CookieSessionStore::default(),
                    Key::generate(),
                ))
                .service(login_session),
        )
        .await;
        let credentials = Credentials {
            username: "nope".to_string(),
            password: "nothing".to_string(),
        };
        let req = test::TestRequest::post()
            .uri("/login/session")
            .set_json(json!(credentials))
            .to_request();
        let resp = test::call_service(&app, req).await;

        assert_eq!(resp.status(), 401);
        let set_cookie_header = resp.headers().get("set-cookie");
        assert!(set_cookie_header.is_none());
    }
}

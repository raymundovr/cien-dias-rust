use actix_web::{HttpResponse, post, Responder, web};
use serde::{Deserialize, Serialize};
use serde_json;

#[derive(Debug, Deserialize, Serialize)]
struct Credentials {
    username: String,
    password: String,
}

#[derive(Serialize)]
struct TokenResponse {
    success: bool,
    token: Option<String>,
}

#[post("/login")]
async fn login(data: web::Json<Credentials>) -> impl Responder {
    if data.username == "ray".to_string() && data.password == "test".to_string() {
        return HttpResponse::Ok()
    }

    HttpResponse::Unauthorized()
}

#[cfg(test)]
mod test {
    use super::*;
    use actix_web::{App, test};

    #[actix_web::test]
    async fn test_login_right_credentials() {
        let app = test::init_service(App::new().service(login)).await;

        let credentials = Credentials {
            username: "ray".to_string(),
            password: "test".to_string(),
        };

        let req = test::TestRequest::post().uri("/login").set_json(credentials).to_request();
        let resp = test::call_service(&app, req).await;

        assert_eq!(resp.status(), 200);
    }

    #[actix_web::test]
    async fn test_login_incorrect_credentials() {
        let app = test::init_service(App::new().service(login)).await;
        let credentials = Credentials {
            username: "something".to_string(),
            password: "wrong".to_string(),
        };
        let req = test::TestRequest::post().uri("/login").set_json(credentials).to_request();
        let resp = test::call_service(&app, req).await;

        assert_eq!(resp.status(), 401);
    }
}
use actix_web::{get, HttpResponse, Responder};

#[get("/health")]
pub async fn health_check() -> impl Responder {
    HttpResponse::Ok().body("all right!")
}

#[cfg(test)]
mod test {
    use super::*;
    use actix_web::{App, test};

    #[actix_web::test]
    async fn test_health_check() {
        let app = test::init_service(App::new().service(health_check)).await;
        let req = test::TestRequest::get().uri("/health").to_request();
        let resp = test::call_and_read_body(&app, req).await;

        assert_eq!(resp, "all right!");
    }
}
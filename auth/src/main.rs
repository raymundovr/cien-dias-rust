use actix_web::{App, get, HttpResponse, HttpServer, Responder};

#[get("/health")]
async fn health_check() -> impl Responder {
    HttpResponse::Ok().body("ok")
}

#[actix_web::main]
async fn main() -> std::io::Result<()> {
    HttpServer::new(|| {
        App::new()
        .service(health_check)
    })
    .bind(("127.0.0.1", 8080))?
    .run()
    .await
}

#[cfg(test)]
mod test {
    use super::*;
    use actix_web::
        {
            App,
            http::{self},
            test,
        };

    #[actix_web::test]
    async fn test_health() {
        let app = test::init_service(App::new().service(health_check)).await;
        let request = test::TestRequest::get().uri("/health").to_request();
        let response = test::call_service(&app, request).await;
        println!("{:?}", response);
        assert_eq!(response.status(), http::StatusCode::OK);
    }
}
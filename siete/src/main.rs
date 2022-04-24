use siete::server::{get_celsius, get_farenheit};
use actix_web::{App, HttpServer};

#[actix_web::main]
async fn main() -> std::io::Result<()> {
    HttpServer::new(move || {
        App::new()
            .service(get_celsius)
            .service(get_farenheit)
    })
    .bind(("127.0.0.1", 8080))?
    .run()
    .await
}

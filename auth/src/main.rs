mod auth;
mod general;
mod token;

use actix_web::{middleware::Logger, App, HttpServer};
use auth::login;
use env_logger::Env;
use general::health_check;

#[actix_web::main]
async fn main() -> std::io::Result<()> {
    env_logger::init_from_env(Env::default().default_filter_or("info"));

    HttpServer::new(|| {
        App::new()
            .wrap(Logger::default())
            .service(health_check)
            .service(login)
    })
    .bind(("127.0.0.1", 8080))?
    .run()
    .await
}

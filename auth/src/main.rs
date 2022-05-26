mod auth;
mod general;
mod token;

use actix_web::{cookie::Key, middleware::Logger, App, HttpServer};
use actix_session::{SessionMiddleware, storage::CookieSessionStore};
use auth::*;
use env_logger::Env;
use general::health_check;

#[actix_web::main]
async fn main() -> std::io::Result<()> {
    env_logger::init_from_env(Env::default().default_filter_or("info"));
    let session_key = Key::generate();

    HttpServer::new(move || {
        App::new()
            .wrap(Logger::default())
            .wrap(SessionMiddleware::new(CookieSessionStore::default(), session_key.clone()))
            .service(health_check)
            .service(login_token)
            .service(login_session)
    })
    .bind(("127.0.0.1", 8080))?
    .run()
    .await
}

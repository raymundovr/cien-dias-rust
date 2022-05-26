use actix_identity::{CookieIdentityPolicy, IdentityService};
use actix_web::{middleware::Logger, App, HttpServer};
use actix_web::dev::Server;
use crate::auth::*;
use crate::general::health_check;

pub fn launch_server() -> Result<Server, std::io::Error> {
    let server = HttpServer::new(|| {
        let policy = CookieIdentityPolicy::new(&[0; 32])
        .name("auth.session")
        .http_only(true);
    App::new()
        .wrap(Logger::default())
        .wrap(IdentityService::new(policy))
        .service(health_check)
        .service(login_token)
        .service(login_session)
    })
    .bind(("127.0.0.1", 8080))?
    .run();
    
    Ok(server)
}

mod app;
mod auth;
mod general;
mod token;

use app::launch_server;
use env_logger::Env;

#[actix_web::main]
async fn main() -> std::io::Result<()> {
    env_logger::init_from_env(Env::default().default_filter_or("info"));
    launch_server()?.await
}

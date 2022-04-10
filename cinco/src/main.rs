use actix_web::{get, web, App, HttpServer, Responder};
use serde::{Deserialize, Serialize};
use serde_json::json;

#[derive(Debug, Deserialize, Serialize)]
struct Album {
    id: String,
    title: String,
    artist: String,
    price: f64,
}

#[actix_web::main]
async fn main() -> std::io::Result<()>{
    HttpServer::new(|| {
        App::new()
        .service(get_albums)
    })
    .bind(("127.0.0.1", 8080))?
    .run()
    .await
}

#[get("/albums")]
async fn get_albums() -> impl Responder {
    let albums: Vec<Album> = vec![
        Album {
            id: "1".into(),
            title: "Siembra".into(),
            artist: "Willie Colón & Rubén Blades".into(),
            price: 29.99,
        },
        Album {
            id: "2".into(),
            title: "Princesa Donashii".into(),
            artist: "Princesa Donashii".into(),
            price: 25.99,
        },
        Album {
            id: "3".into(),
            title: "El Silencio".into(),
            artist: "Caifanes".into(),
            price: 24.99,
        },
        Album {
            id: "4".into(),
            title: "Latin-Rock-Soul".into(),
            artist: "Fania All Stars".into(),
            price: 29.99,
        },
    ];

    web::Json(json!(albums))
}

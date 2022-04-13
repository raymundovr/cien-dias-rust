use actix_web::{get, post, web, App, HttpResponse, HttpServer, Responder, HttpResponseBuilder};
use serde::{Deserialize, Serialize};
use serde_json::json;
use std::sync::Mutex;

#[derive(Debug, Deserialize, Serialize)]
struct Album {
    id: String,
    title: String,
    artist: String,
    price: f64,
}

#[derive(Debug)]
struct AppState {
    albums: Mutex<Vec<Album>>,
}

#[actix_web::main]
async fn main() -> std::io::Result<()> {
    let app_state = web::Data::new(AppState {
        albums: Mutex::new(vec![
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
        ]),
    });
    HttpServer::new(move || {
        App::new()
            .app_data(app_state.clone())
            .service(get_albums)
            .service(post_album)
    })
    .bind(("127.0.0.1", 8080))?
    .run()
    .await
}

#[get("/albums")]
async fn get_albums(data: web::Data<AppState>) -> impl Responder {
    let albums = &data.albums;
    web::Json(json!(albums))
}

#[post("/albums")]
async fn post_album(data: web::Data<AppState>, body: String) -> HttpResponseBuilder {
    let mut albums = data.albums.lock().unwrap();

    if let Ok(album) = serde_json::from_str(&body) {
        albums.push(album);
        return HttpResponse::Ok();
    }

    HttpResponse::BadRequest()
}

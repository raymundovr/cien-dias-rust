use actix_web::{
    delete, get, http::StatusCode, patch, post, web, App, HttpResponse, HttpResponseBuilder,
    HttpServer, Responder,
};
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
            .service(get_album)
            .service(update_album)
            .service(delete_album)
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

#[get("/albums/{id}")]
async fn get_album(data: web::Data<AppState>, path: web::Path<String>) -> impl Responder {
    let albums = data.albums.lock().unwrap();
    let id = path.into_inner();
    for album in albums.iter() {
        if album.id == id {
            return web::Json(json!(album))
                .customize()
                .with_status(StatusCode::OK);
        }
    }

    web::Json(json!("not found"))
        .customize()
        .with_status(StatusCode::NOT_FOUND)
}

#[patch("/albums/{id}")]
async fn update_album(
    data: web::Data<AppState>,
    path: web::Path<String>,
    body: String,
) -> impl Responder {
    let mut albums = data.albums.lock().unwrap();
    let id = path.into_inner();
    let payload: Result<Album, serde_json::Error> = serde_json::from_str(&body);

    if let Ok(album) = payload {
        match albums.iter().position(|a| a.id == id) {
            Some(i) => {
                albums[i] = album;
                return web::Json(json!(albums[i]))
                    .customize()
                    .with_status(StatusCode::OK);
            }
            None => {
                return web::Json(json!("not found"))
                    .customize()
                    .with_status(StatusCode::NOT_FOUND);
            }
        }
    }

    web::Json(json!("{error: invalid payload}"))
        .customize()
        .with_status(StatusCode::BAD_REQUEST)
}

#[delete("/albums/{id}")]
async fn delete_album(data: web::Data<AppState>, path: web::Path<String>) -> HttpResponseBuilder {
    let mut albums = data.albums.lock().unwrap();
    let id = path.into_inner();

    match albums.iter().position(|a| a.id == id) {
        Some(i) => {
            albums.remove(i);
            HttpResponse::Ok()
        }
        None => {
            HttpResponse::NotFound()
        }
    }
}

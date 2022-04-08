use serde::{Deserialize, Serialize};
use tide::prelude::*;
use tide::{Request};

#[derive(Debug, Deserialize, Serialize)]
struct Album {
    id: String,
    title: String,
    artist: String,
    price: f64,
}

#[async_std::main]
async fn main() -> tide::Result<()> {
    let mut app = tide::new();

    app.at("/albums").get(get_albums);
    app.listen("127.0.0.1:8080").await?;

    Ok(())
}

async fn get_albums(_req: Request<()>) -> Result<serde_json::Value, tide::Error> {
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
    Ok(json!({
        "albums": albums,
        "meta": {
            "count": 4,
            "version": 1,
        }
    }))
}

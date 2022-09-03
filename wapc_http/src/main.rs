use actix_web::{get, App, HttpResponse, HttpServer, web};
use anyhow::Result;
use serde::Serialize;
use std::fs::read;
use std::time::Instant;
use wapc::WapcHost;
use wapc_codec::messagepack::{deserialize, serialize};
use wasmtime_provider::WasmtimeEngineProvider;

struct AppState {
    pub engine:  WasmtimeEngineProvider,
}

#[derive(Serialize)]
pub struct DoesWordExistArgs {
    pub word: String,
}

#[get("/")]
async fn get_does_word_exist(app_state: web::Data<AppState>) -> HttpResponse {
    let start = Instant::now();
    let engine = app_state.engine.clone();
    let guest = WapcHost::new(
        Box::new(engine),
        Some(Box::new(move |_a, _b, _c, _d, _e| Ok(vec![]))),
    )
    .unwrap();
    println!("Loading guest {}", start.elapsed().as_millis());
    let call_result = guest
        .call(
            "does_word_exist",
            &serialize(DoesWordExistArgs {
                word: "esto".to_string(),
            })
            .unwrap(),
        )
        .unwrap();
    let result: bool = deserialize(&call_result).unwrap();
    
    println!("Loading WASM and answering took {} milliseconds", start.elapsed().as_millis());

    let answer = match result {
        true => "yes",
        false => "no",
    };

    HttpResponse::Ok().body(answer)
}

#[actix_web::main]
async fn main() -> Result<()> {
    // Después de encontrar que crear en engine es lo que más consume tiempo ahora funciona clonándolo
    let buf = read("./wasm/cuckoo_wapc.wasm")?;
    let engine = WasmtimeEngineProvider::new(&buf, None)?;
    let app_state = web::Data::new(AppState { engine });

    HttpServer::new(move || {
        App::new()
            .app_data(app_state.clone())
            .service(get_does_word_exist)
    })
    .bind(("127.0.0.1", 8080))?
    .run()
    .await
    .map_err(anyhow::Error::from)
}

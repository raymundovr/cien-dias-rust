use actix_web::{App, HttpServer, get, web};
use anyhow::Result;
use serde::{Serialize};
use std::fs::read;
use wapc::{WapcHost};
use wapc_codec::messagepack::{deserialize, serialize};

#[derive(Debug)]
struct AppState {
    pub result: bool,
}

#[derive(Serialize)]
pub struct DoesWordExistArgs {
    pub word: String,
}

#[get("/")]
async fn get_does_word_exist(state: web::Data<AppState>) -> String {
    println!("{:?}", state);
    if state.result {
        return "yes".to_string();
    }

    "no".to_string()
}

#[actix_web::main]
async fn main() -> Result<()> {
    let buf = read("./wasm/cuckoo_wapc.wasm")?;
    let engine = wasmtime_provider::WasmtimeEngineProvider::new(&buf, None)?;
    let guest = WapcHost::new(
        Box::new(engine),
        Some(Box::new(move |_a, _b, _c, _d, _e| Ok(vec![])))
    )?;

    let call_result = guest.call("does_word_exist", &serialize(DoesWordExistArgs{ word: "esto".to_string() }).unwrap())?;
    let result: bool = deserialize(&call_result).unwrap();
    
    println!("{:?}", result);

    HttpServer::new(move || {
        App::new()
        .app_data(web::Data::new(AppState { result }))
        .service(get_does_word_exist)
    })
    .bind(("127.0.0.1", 8080))?
    .run()
    .await
    .map_err(anyhow::Error::from)
}

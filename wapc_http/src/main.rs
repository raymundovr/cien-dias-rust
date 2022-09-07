use actix_web::{get, middleware::Logger, web, App, HttpResponse, HttpServer};
use anyhow::Result;
use env_logger::Env;
use log::info;
use serde::{Deserialize, Serialize};
use std::fs::read;
use std::time::Instant;
use wapc::WapcHost;
use wapc_codec::messagepack::{deserialize, serialize};
use wasmtime_provider::WasmtimeEngineProvider;

struct AppState {
    pub engine: WasmtimeEngineProvider,
}

#[derive(Clone, Debug, Deserialize, Serialize)]
pub struct DoesWordExistArgs {
    pub word: String,
}

#[get("/does_word_exist")]
async fn get_does_word_exist(
    app_state: web::Data<AppState>,
    query: web::Query<DoesWordExistArgs>,
) -> HttpResponse {
    
    let start = Instant::now();
    let engine = app_state.engine.clone();
    info!("Query string {:?}", query);
    let word = &query.word;
    let guest = WapcHost::new(
        Box::new(engine),
        Some(Box::new(move |_a, _b, _c, _d, _e| Ok(vec![]))),
    )
    .unwrap();
    info!("Loading guest {}", start.elapsed().as_millis());
    let call_result = guest
        .call(
            "does_word_exist",
            &serialize(DoesWordExistArgs {
                word: word.to_string(),
            })
            .unwrap(),
        )
        .unwrap();
    let result: bool = deserialize(&call_result).unwrap();

    info!(
        "Loading WASM and answering took {} milliseconds",
        start.elapsed().as_millis()
    );

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
    env_logger::init_from_env(Env::default().default_filter_or("info"));

    HttpServer::new(move || {
        App::new()
            .app_data(app_state.clone())
            .wrap(Logger::default())
            .wrap(Logger::new("%a %{User-Agent}i"))
            .service(get_does_word_exist)
    })
    .bind(("127.0.0.1", 8080))?
    .run()
    .await
    .map_err(anyhow::Error::from)
}

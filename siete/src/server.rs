use crate::convertor::{Celsius, Farenheit};
use actix_web::{get, http::header::ContentType, web, Responder, HttpResponse};

#[get("/celsius/{value}")]
pub async fn get_celsius(path: web::Path<f64>) -> impl Responder {
    let c = Farenheit::new(path.into_inner()).into_celsius();

    HttpResponse::Ok()
        .body(format!("{}", c))
}

#[get("/farenheit/{value}")]
pub async fn get_farenheit(path: web::Path<f64>) -> impl Responder {
    let f = Celsius::new(path.into_inner()).into_farenheit();

    HttpResponse::Ok()
        .body(format!("{}", f))
}

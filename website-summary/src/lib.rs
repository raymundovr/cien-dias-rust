use anyhow::Result;
use bytes::Bytes;
use spin_sdk::redis_component;
use std::str::from_utf8;
use url::Url;
use scraper::{Html, Selector};

/// A simple Spin Redis component.
#[redis_component]
fn on_message(message: Bytes) -> Result<()> {
    let uri = from_utf8(&message)?;
    // quickly fail if not valid URL
    let uri = Url::parse(uri)?;

    let res = spin_sdk::http::send(
        http::Request::builder()
        .method("GET")
        .uri(uri.as_str())
        .body(None)?
    )?;

    match res.body() {
        Some(bytes) => {
            let html = Html::parse_document(from_utf8(bytes)?);
            let selector = Selector::parse(r#"meta[name="description"]"#).unwrap();
            let description = html.select(&selector).next().unwrap();
            println!("{:?}", description.value().attr("content"));
        },
        _ => {}
    };

    Ok(())
}

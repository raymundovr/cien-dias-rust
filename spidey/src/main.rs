use anyhow::Result;

use kv::*;
wit_bindgen_rust::import!("wit/kv_v0.2.0/kv.wit");
wit_error_rs::impl_error!(kv::Error);

fn main() -> Result<()> {
    let my_kv = Kv::open("placeholder-name")?;
    my_kv.set("hello-spiderlightning", b"Hello, SpiderLightning!")?;
    println!(
        "{}",
        std::str::from_utf8(&my_kv.get("hello-spiderlightning")?)?,
    );

    Ok(())
}

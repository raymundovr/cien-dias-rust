use anyhow::{anyhow, Result};
use bytes::Bytes;
use spin_sdk::redis_component;
// use std::str::from_utf8;
use spin_sdk::redis;


/// A simple Spin Redis component.
#[redis_component]
fn on_message(message: Bytes) -> Result<()> {
    let address = std::env::var("REDIS_ADDRESS")?;
    // Store the message received
    redis::set(&address, &"spin-redis", &message).map_err(
        |_| anyhow!("Error storing message on redis")
    )?;

    Ok(())
}

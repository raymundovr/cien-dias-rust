use std::collections::HashMap;
use serde::{Deserialize, Serialize};
use serde_json::json;
use chrono::prelude::*;

#[derive(Debug, Deserialize, Serialize)]
struct DataLog {
    id: String,
    timestamp: DateTime<Utc>,
    metadata: HashMap<String, String>,
}

fn main() {
    let mut metadata = HashMap::new();
    metadata.insert("hello".to_string(), "one".to_string());

    let data = DataLog { id: "one".to_string(), timestamp: Utc::now(), metadata: metadata };

    println!("{:?}", data);
    println!("{}", json!(data));
}

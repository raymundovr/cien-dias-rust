use serde::{Deserialize, Serialize, Serializer};
use mongodb::bson::oid::ObjectId;
use serde_json::json;
use chrono::{DateTime, Utc};

fn serialize_option_oid_as_string<S>(oid: &Option<ObjectId>, serializer: S) -> Result<S::Ok, S::Error> 
    where S: Serializer
{
    match oid {
        Some(ref oid) => serializer.serialize_some(oid.to_string().as_str()),
        None => serializer.serialize_none()
    }
}

fn serialize_oid_as_string<S>(oid: &ObjectId, serializer: S) -> Result<S::Ok, S::Error>
    where S: Serializer
{
    serializer.serialize_str(oid.to_string().as_str())
}

#[derive(Deserialize, Serialize)]
struct Track {
    #[serde(
        rename = "_id",
        skip_serializing_if = "Option::is_none"
    )]
    id: Option<ObjectId>,
    user: ObjectId,
    name: String,
    description: String,
    created_at: DateTime<Utc>,
}

#[derive(Deserialize, Serialize)]
struct TrackWithStringIds {
    #[serde(rename = "_id", skip_serializing_if="Option::is_none", serialize_with="serialize_option_oid_as_string")]
    id: Option<ObjectId>,
    name: String,
    #[serde(serialize_with="serialize_oid_as_string")]
    user: ObjectId,
    description: String,
    created_at: DateTime<Utc>,
}

#[tokio::main]
async fn main() {
    let track_id = Some(ObjectId::new());
    let track = Track{
        id: track_id,
        user: ObjectId::new(),
        name: "Track no str".into(),
        description: "Description".into(),
        created_at: Utc::now(),
    };

    println!("{}", json!(track));

    let track = TrackWithStringIds {
        id: track_id,
        user: ObjectId::new(),
        name: "Track no str".into(),
        description: "Description".into(),
        created_at: Utc::now(),
    };

    println!("{}", json!(track));
}

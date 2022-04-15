use chrono::{DateTime, TimeZone, Utc};
use mongodb::{
    bson::{Document, to_bson, oid::ObjectId},
    options::{ClientOptions, ResolverConfig},
    Client, Collection,
};
use std::env;
use std::error::Error;
use tokio;
use serde::{Deserialize, Serialize};

#[derive(Debug, Deserialize, Serialize)]
struct Movie {
    #[serde(rename = "_id,", skip_serializing_if = "Option::is_none")]
    id: Option<ObjectId>,
    title: String,
    year: u16,
    plot: String,
    #[serde(with = "bson::serde_helpers::chrono_datetime_as_bson_datetime")]
    released: DateTime<Utc>,
}

async fn list_database_names(client: &Client) -> Result<(), Box<dyn Error>> {
    println!("Databases:");
    for name in client.list_database_names(None, None).await? {
        println!("{}", name);
    }
    Ok(())
}

async fn insert_parasite(
    collection: &Collection<Document>,
) -> Result<mongodb::results::InsertOneResult, Box<dyn Error>> {
    let new_doc = bson::doc! {
        "title": "A",
        "year": 2020,
        "plot": "B",
        "released": Utc.ymd(2020, 2, 7).and_hms(0, 0, 0)
    };
    println!("Inserting {}", new_doc);
    Ok(collection.insert_one(new_doc.clone(), None).await?)
}

async fn lookup_by_title(
    collection: &Collection<Document>,
    title: &str,
) -> Option<bson::Document> {
    let result = collection
        .find_one(
            bson::doc! {
                "title": title
            },
            None,
        )
        .await;
    match result {
        Ok(doc) => doc,
        _ => None
    }
}

#[tokio::main]
async fn main() -> Result<(), Box<dyn Error>> {
    let client_uri = env::var("MONGODB_URI").expect("You must set the MONGODB_URI env var!");
    let options =
        ClientOptions::parse_with_resolver_config(&client_uri, ResolverConfig::cloudflare())
            .await?;
    let client = Client::with_options(options)?;

    list_database_names(&client).await?;
    let movies: Collection<bson::Document> = client.database("mflix").collection("movies");
    //println!("{:?}", insert_parasite(&movies).await);
    if let Some(movie) = lookup_by_title(&movies, "blah").await {
        println!("{:?}", movie);
        let update_result = movies.update_one(
            bson::doc!{
                "_id": &movie.get("_id")
            },
            bson::doc!{
                "$set": {"year": "2022"}
            }
            ,
            None
        ).await?;
        println!("Updated {} document", update_result.modified_count);
    } else {
        println!("Cannot find movie");
    }

    let nightmare_alley = Movie {
        id: None,
        title: "Nightmare Alley".into(),
        year: 2022,
        plot: "A good movie".into(),
        released: Utc::now(),
    };

    let serialized_movie = to_bson(&nightmare_alley)?;
    let document = serialized_movie.as_document().unwrap();
    let insert_result = movies.insert_one(document, None).await?;

    println!("Insert result {}", insert_result.inserted_id);

    Ok(())
}

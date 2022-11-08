use person_greeter::greeter_client::GreeterClient;
use person_greeter::Person;

pub mod person_greeter {
    tonic::include_proto!("persongreeter");
}

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let mut client = GreeterClient::connect("http://[::1]:5001").await?;

    let request = tonic::Request::new(
        Person {
            id: 1,
            name: "Raymundo".into(),
            age: 37,
        }
    );

    let response = client.greet(request).await?;

    println!("Got as response: {:?}", response);
    Ok(())
}
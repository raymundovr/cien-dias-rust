use person_greeter::greeter_server::{Greeter, GreeterServer};
use person_greeter::{Person, PersonGreetings};
use tonic::{transport::Server, Request, Response, Status};

pub mod person_greeter {
    tonic::include_proto!("persongreeter");
}

#[derive(Debug, Default)]
pub struct PersonGreeter {}

#[tonic::async_trait]
impl Greeter for PersonGreeter {
    async fn greet(&self, request: Request<Person>) -> Result<Response<PersonGreetings>, Status> {
        println!("Got Request {:?}", request);
        // unwrap private properties
        let request = request.into_inner();
        
        let reply = PersonGreetings {
            message: format!(
                "Hello {}, congratulations on your {} anniversary",
                request.name,
                request.age,
            ),
        };

        Ok(Response::new(reply))
    }
}

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let addr = "[::1]:5001".parse()?;
    let greeter = PersonGreeter::default();

    Server::builder()
        .add_service(GreeterServer::new(greeter))
        .serve(addr).await?;

    Ok(())
}
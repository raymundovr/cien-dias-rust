pub mod stream_server {
    tonic::include_proto!("hellostreams");
}

use tonic::{transport::Server, Request, Response, Status, Streaming};
use stream_server::StreamMessage;
use stream_server::streamer_server::{Streamer, StreamerServer};
use std::net::ToSocketAddrs;
use std::pin::Pin;
use futures::Stream;
use tokio::sync::mpsc;
use tokio_stream::{wrappers::ReceiverStream, StreamExt};

struct MyStreamer;

type ResponseStream = Pin<Box<dyn Stream<Item = Result<StreamMessage, Status>> + Send>>;

#[tonic::async_trait]
impl Streamer for MyStreamer {
    type BidirectionalMessageStream = ResponseStream;

    async fn bidirectional_message(&self, req: Request<Streaming<StreamMessage>>) -> 
    Result<Response<Self::BidirectionalMessageStream>, Status> {
        let mut in_stream = req.into_inner();
        let (tx, rx) = mpsc::channel(128);

        tokio::spawn(async move {
            while let Some(result) = in_stream.next().await {
                match result {
                    Ok(v) => tx
                    .send(Ok(StreamMessage { message: v.message }))
                    .await
                    .expect("error on tx send"),
                    Err(err) => 
                        match tx.send(Err(err)).await {
                            Ok(_) => (),
                            Err(_) => break,
                        }
                    
                }
            }
            println!("Stream ended");
        });

        let out_stream = ReceiverStream::new(rx);
        Ok(
            Response::new(
                Box::pin(out_stream) as Self::BidirectionalMessageStream
            )
        )
    }
}

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let streamer = MyStreamer {};
    Server::builder()
        .add_service(StreamerServer::new(streamer))
        .serve("[::1]:5001".to_socket_addrs().unwrap().next().unwrap())
        .await
        .unwrap();
        
    Ok(())
}
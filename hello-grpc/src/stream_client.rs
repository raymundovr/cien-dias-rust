pub mod stream_client {
    tonic::include_proto!("hellostreams");
}

use futures::stream::Stream;
use tokio_stream::StreamExt;
use std::time::Duration;
use stream_client::streamer_client::StreamerClient;
use stream_client::StreamMessage;

fn requests_iter() -> impl Stream<Item = StreamMessage> {
    tokio_stream::iter(1..10).map(|i| StreamMessage {
        message: format!("Hi {i}"),
    })
}

async fn throtle_requests(client: &mut StreamerClient<tonic::transport::Channel>, duration: Duration) {
    let in_stream = requests_iter().throttle(duration);

    let response = client.bidirectional_message(in_stream).await.unwrap();
    let mut response_stream = response.into_inner();

    while let Some(received) = response_stream.next().await {
        let received = received.unwrap();
        println!("Received {:?}", received.message);
    }
}

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let mut client = StreamerClient::connect("http://[::1]:5001").await?;

    throtle_requests(&mut client, Duration::from_secs(2)).await;

    Ok(())
}

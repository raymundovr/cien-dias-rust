/// Common functionalities for Qs
use amiquip::{
    Channel, Connection, ConsumerMessage, ConsumerOptions, Exchange, Publish, QueueDeclareOptions,
    Result,
};
use std::borrow::Cow;

pub struct Queue<'a> {
    connection: Connection,
    channel: Channel,
    name: &'a str,
}

impl<'a> Queue<'a> {
    pub fn new(url: &str, name: &'a str) -> Result<Self, amiquip::Error> {
        let mut connection = Connection::insecure_open(url)?;
        let channel = connection.open_channel(None)?;
        Result::Ok(Queue {
            connection,
            channel,
            name,
        })
    }

    pub fn close(self) -> Result<(), amiquip::Error> {
        self.connection.close()
    }

    pub fn publish_message(&self, message: &[u8]) -> Result<()> {
        let exchange = Exchange::direct(&self.channel);
        exchange.publish(Publish::new(message, self.name))
    }

    pub fn read_queue<F: FnOnce(Cow<str>) -> () + Copy>(&self, process: F) -> Result<(), amiquip::Error> {
        let queue = self
            .channel
            .queue_declare(self.name, QueueDeclareOptions::default())?;
        let consumer = queue.consume(ConsumerOptions::default())?;

        for (i, message) in consumer.receiver().iter().enumerate() {
            match message {
                ConsumerMessage::Delivery(delivery) => {
                    let body = String::from_utf8_lossy(&delivery.body);
                    println!("[{}] I did receive {}", i, body);
                    process(body);
                }
                other => {
                    println!("Consumer Q ended {:?}", other);
                }
            }
        }

        Ok(())
    }
}

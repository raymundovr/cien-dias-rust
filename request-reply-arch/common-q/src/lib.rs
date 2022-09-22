/// Common functionalities for Qs
use amiquip::{
    AmqpProperties, Channel, Connection, ConsumerMessage, ConsumerOptions, Exchange, Publish,
    QueueDeclareOptions, Result,
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

    pub fn read_queue<F: FnOnce(Cow<str>) -> () + Copy>(
        &self,
        process: F,
    ) -> Result<(), amiquip::Error> {
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
                    break;
                }
            }
        }

        Ok(())
    }

    pub fn process_and_reply_rpc<F: FnOnce(Cow<str>) -> String + Copy>(
        &self,
        process: F,
    ) -> Result<(), amiquip::Error> {
        let exchange = Exchange::direct(&self.channel);
        let queue = self
            .channel
            .queue_declare(self.name, QueueDeclareOptions::default())?;
        let consumer = queue.consume(ConsumerOptions::default())?;

        for message in consumer.receiver().iter() {
            match message {
                ConsumerMessage::Delivery(delivery) => {
                    let (reply_to, correlation_id) = match (
                        delivery.properties.reply_to(),
                        delivery.properties.correlation_id(),
                    ) {
                        (Some(reply_to), Some(id)) => (reply_to, id),
                        _ => {
                            eprintln!(
                                "Invalid message {:?} {:?}",
                                delivery.properties.reply_to(),
                                delivery.properties.correlation_id()
                            );
                            consumer.ack(delivery)?;
                            continue;
                        }
                    };
                    println!("Received message for {} with ID {}", reply_to, correlation_id);
                    let body = String::from_utf8_lossy(&delivery.body);
                    let result = process(body);
                    exchange.publish(Publish::with_properties(
                        result.as_bytes(),
                        reply_to,
                        AmqpProperties::default().with_correlation_id(correlation_id.to_string()),
                    ))?;
                    consumer.ack(delivery)?;
                }
                other => {
                    println!("Consumer Q ended {:?}", other);
                    break;
                }
            }
        }

        Ok(())
    }

    pub fn request_and_return_rpc(
        &self,
        message: &[u8],
        correlation_id: String,
    ) -> Result<Option<String>, amiquip::Error> {
        let exchange = Exchange::direct(&self.channel);
        let queue = self.channel.queue_declare(
            "",
            QueueDeclareOptions {
                exclusive: true,
                ..QueueDeclareOptions::default()
            },
        )?;
        let consumer = queue.consume(ConsumerOptions::default())?;

        println!(
            "My Q name {:?}. Sending message to {}",
            queue.name(),
            self.name
        );
        exchange.publish(Publish::with_properties(
            message,
            self.name,
            AmqpProperties::default()
                .with_reply_to(queue.name().to_string())
                .with_correlation_id(correlation_id.clone()),
        )).expect("Cannot publish RPC message");

        println!("Consuming now...");
        for message in consumer.receiver().iter() {
            match message {
                ConsumerMessage::Delivery(delivery) => {
                    if delivery.properties.correlation_id().as_ref() == Some(&correlation_id) {
                        return Ok(Some(String::from_utf8_lossy(&delivery.body).into()));
                    }
                }
                other => {
                    eprintln!("Consume Q ended {:?}", other);
                }
            }
        }

        println!("I am done...");
        Ok(None)
    }
}

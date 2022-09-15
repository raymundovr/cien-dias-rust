/// Common functionalities for Qs
use amiquip::{Channel, Connection, Exchange, Publish, Result};

pub struct Queue<'a> {
    pub connection: Connection,
    pub channel: Channel,
    pub name: &'a str,
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

    pub fn publish_message(self, message: &[u8]) -> Result<()> {
        let exchange = Exchange::direct(&self.channel);
        exchange.publish(Publish::new(message, self.name))
    }
}

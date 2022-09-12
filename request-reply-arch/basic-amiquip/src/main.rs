use amiquip::{ConsumerOptions, Connection, Exchange, Publish, Result, QueueDeclareOptions, ConsumerMessage};

// necesitas RabbitMQ para esto
static URL: &str = "amqp://guest:guest@localhost:5672";

fn produce(message: &str) -> Result<()> {
    let mut connection = Connection::insecure_open(URL)?;
    let channel = connection.open_channel(None)?;
    let exchange = Exchange::direct(&channel);

    exchange.publish(Publish::new(message.as_bytes(), "hola"))?;
    println!("Mensaje enviado.");
    connection.close()
}

fn consume() -> Result<()> {
    let mut connection = Connection::insecure_open(URL)?;
    let channel = connection.open_channel(None)?;
    let queue = channel.queue_declare("hola", QueueDeclareOptions::default())?;

    let consumer = queue.consume(ConsumerOptions::default())?;
    println!("Esperando mensaje... Presiona Ctrl + C para salir");

    for (i, message) in consumer.receiver().iter().enumerate() {
        match message {
            ConsumerMessage::Delivery(delivery) => {
                let body = String::from_utf8_lossy(&delivery.body);
                println!("({:>3}) Received [{}]", i, body);
                consumer.ack(delivery)?;
            }
            other => {
                println!("Consumer ended: {:?}", other);
                break;
            }
        }
    }

    connection.close()
}

fn main() -> Result<()> {
    let mode = std::env::args().nth(1).expect("Usa el modo --productor o --consumidor");
    
    if mode == String::from("--productor") {
        println!("Iniciando modo productor...");
        let message = std::env::args().nth(2).expect("En modo productor debes proveer el mensaje entre comillas");
        return produce(&message);
    }

    println!("Iniciando modo consumidor");
    consume()
}

use clap::{Parser, ValueEnum};
use common_q::*;

const URL: &'static str = "amqp://guest:guest@localhost:5672";

#[derive(Clone, PartialEq, Eq, ValueEnum)]
enum Mode {
    Consumer,
    Producer,
}

#[derive(Parser)]
struct Args {
    #[clap(arg_enum, value_parser)]
    mode: Mode,
    #[clap(short, long, value_parser)]
    id: String,
    #[clap(short, long, value_parser)]
    queue: String,
}

fn main() {
    let args = Args::parse();
    let q = Queue::new(URL, &args.queue).expect("Cannot instantiate new Queue");

    match args.mode {
        Mode::Consumer => {
            println!("Running as consumer. Instance ID {}", args.id);
            q.read_queue(|body| {
                println!("This is the closure {}", body);
            }).expect("Something went wrong while reading the Q");
        }
        Mode::Producer => {
            println!("Running as producer. Instance ID {}", args.id);
            q.publish_message(format!("Hello, my ID is {}", &args.id).as_bytes())
                .expect("Cannot publish message");
        }
    }
    q.close().expect("Cannot close Queue");
}

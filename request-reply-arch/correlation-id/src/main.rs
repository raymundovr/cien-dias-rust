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
            println!("Running as consumer. Q name: {}. Instance ID: {}", args.queue, args.id);
            /* q.read_queue(|body| {
                println!("This is the closure {}", body);
            }).expect("Something went wrong while reading the Q"); */

            q.process_and_reply_rpc(|body| format!("{} add this", body))
                .expect("Cannot reply to rpc");
        }
        Mode::Producer => {
            println!("Running as producer. Target Q: {}. Instance ID {}", args.queue, args.id);
            /* q.publish_message(format!("Hello, my ID is {}", &args.id).as_bytes())
                .expect("Cannot publish message"); */

            q.request_and_return_rpc("This is the msg".as_bytes(), args.id).expect("Cannot publish RPC");
        }
    }

    println!("Closing Q...");
    q.close().expect("Cannot close Queue");
}

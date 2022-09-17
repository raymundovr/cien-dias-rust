mod producer;
use clap::{Parser, ValueEnum};

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

    match args.mode {
        Mode::Consumer => {
            println!("Running as consumer. Instance ID {}", args.id);
        }
        Mode::Producer => {
            println!("Running as producer. Instance ID {}", args.id);
            producer::init(URL, &args.id, &args.queue);
        }
    }
}

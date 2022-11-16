use actix::{Actor, Context, System};

struct MyActor;

impl Actor for MyActor {
    type Context = Context<Self>;

    fn started(&mut self, _ctx: &mut Self::Context) {
        println!("Hey, I have just started!");
        System::current().stop();
    }
}

fn main() {
    println!("Hello, actors!");

    let system = System::new();
    system.block_on(async { MyActor.start() });

    system.run().unwrap();
}

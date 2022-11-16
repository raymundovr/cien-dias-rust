use actix::prelude::*;

#[derive(Message)]
#[rtype(result="usize")]
struct Sum(usize, usize);

struct Calculator;

impl Actor for Calculator {
    type Context = Context<Self>;
}

impl Handler<Sum> for Calculator {
    type Result = usize;
    fn handle(&mut self, msg: Sum, _ctx: &mut Self::Context) -> Self::Result {
        msg.0 + msg.1
    }
}


#[actix::main]
async fn main() {
    let addr = Calculator.start();
    let res = addr.send(Sum(100, 23)).await;
    
    match res {
        Ok(result) => {
            println!("Got {}", result)
        },
        Err(_) => {
            eprintln!("Error communicating with actor");
        }
    };
}
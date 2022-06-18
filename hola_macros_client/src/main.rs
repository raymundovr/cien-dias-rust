use hola_macros::implement_hello;

#[implement_hello(bug)]
fn main() {
    println!("Hello, world!");
}

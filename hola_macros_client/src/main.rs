mod holamacro;
use hola_macros::implement_hello;
use hola_macros_derive::HolaMacrosDerive;
use holamacro::HolaMacro;

#[derive(HolaMacrosDerive)]
struct Estructura;


#[implement_hello(bug)]
fn main() {
    println!("Hello, world!");
    Estructura::hola_macro();
}

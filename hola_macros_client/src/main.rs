mod holamacro;
use hola_macros::implement_hello;
use hola_macros_derive::HolaMacrosDerive;
use hola_macros_derive::hola_macros_attribute;
use holamacro::HolaMacro;

#[derive(HolaMacrosDerive)]
#[hola("nombre")]
struct Estructura;

#[hola_macros_attribute(name="mio")]
struct AttrEstructura;

fn main() {
    println!("Hello, world!");
    Estructura::hola_macro();

    AttrEstructura::hola_macro();
}

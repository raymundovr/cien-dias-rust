mod holamacro;
use hola_macros::implement_hello;
use hola_macros_derive::HolaMacrosDerive;
use hola_macros_derive::hola_macros_attribute;
use holamacro::HolaMacro;

trait MiTrait {
    fn me_llamo() -> String;
}

#[derive(HolaMacrosDerive)]
#[hola_uno("mi verdadero nombre es mio")]
struct Estructura {
    campo: String,
}

#[hola_macros_attribute(name="mio")]
struct AttrEstructura;

fn main() {
    let nombre = Estructura::me_llamo();
    println!("{}", nombre);

    // AttrEstructura::hola_macro();
}

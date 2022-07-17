mod holamacro;
use hola_macros::implement_hello;
use hola_macros_derive::{HolaMacrosDerive, hola_macros_attribute, HolaDarling};
use holamacro::HolaMacro;

trait MiTrait {
    fn me_llamo() -> String;
}

#[derive(HolaMacrosDerive)]
#[hola_uno("mi verdadero nombre es mio")]
struct Estructura {
    campo: String,
}

#[derive(HolaDarling)]
#[mi_nombre(nombre = "Raymundo", apellidos = "Vásquez Ruiz")]
struct Nombre;

#[hola_macros_attribute(name="mio")]
struct AttrEstructura;

fn main() {
    let nombre = Estructura::me_llamo();
    println!("{}", nombre);

    println!("Me llamo {}", Nombre::me_llamo());
}

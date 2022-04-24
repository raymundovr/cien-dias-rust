mod convertor;
use convertor::temperature::{Celsius, Farenheit};

fn main() {
    let c: Celsius = Farenheit::new(32.0).into_celsius();
    let f: Farenheit = Celsius::new(0.0).into_farenheit();

    println!("Some degrees Celsius {}", c);
    println!("Some degrees Farenheit {}", f);
}

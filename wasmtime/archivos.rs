use std::error::Error;
use std::fs::read_to_string;

fn main() -> Result<(), Box<dyn Error>> {
    let buf = read_to_string("../../../../../../../../../../etc/passwd")?;

    println!("Leyendo: {}", buf);

    Ok(())
}

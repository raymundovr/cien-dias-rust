use std::io::{BufRead, BufReader};
use std::fs::File;
use std::env;

// Without this it's not possible to have multiple type of errors:
// couldn't convert the error to `std::io::Error`
// the trait `std::convert::From<std::num::ParseIntError>` is not implemented for `std::io::Error`
type GenericError = Box<dyn std::error::Error + Send + Sync + 'static>;
type GenericResult<T> = Result<T, GenericError>;

fn read_integers(file: &mut dyn BufRead) -> GenericResult<Vec<i64>> {
    let mut numbers =  vec![];

    for line in file.lines() {
        let i = line?;
        numbers.push(i.parse()?);
    }

    Ok(numbers)
}

// The same happens here as File::open and read_integers() return different types of Error
fn main() -> GenericResult<()> {
    if env::args().len() != 2 {
        eprintln!("Incorrect arguments");
        std::process::exit(1);
    }

    let file_path = env::args().last().unwrap();
    let file = File::open(file_path)?;
    let mut buffer = BufReader::new(file);

    let integers = read_integers(&mut buffer)?;
    println!("{:?}", integers);

    Ok(())
}

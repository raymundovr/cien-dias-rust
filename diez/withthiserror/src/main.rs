use std::env;
use std::fs::File;
use std::io::{BufRead, BufReader};
use thiserror::Error;

#[derive(Debug, Error)]
enum ParserErrors {
    #[error("Error Reading File")]
    IoError(#[from] std::io::Error),
    #[error("Error Parting")]
    ParserError(#[from] std::num::ParseIntError)
}

fn read_integers(file: &mut dyn BufRead) ->Result<Vec<i64>, ParserErrors> {
    let mut integers = Vec::new();

    for line in file.lines() {
        let i = line?;
        integers.push(
            i.parse()?
        );
    }

    Ok(integers)
}

fn main() -> Result<(), ParserErrors> {
    if env::args().len() != 2 {
        eprintln!("Incorrect arguments");
        std::process::exit(1);
    }

    let file_path = env::args().last().unwrap();
    let file = File::open(file_path)?;
    let mut buf = BufReader::new(file);
    
    let integers = read_integers(&mut buf)?;
    println!("{:?}", integers);

    Ok(())
}

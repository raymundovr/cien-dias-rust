use std::io::{BufRead, BufReader};
use std::fs::File;
use std::env;
use anyhow::Result;

fn read_integers(file: &mut dyn BufRead) -> Result<Vec<i64>> {
    let mut vec = Vec::new();

    for line in file.lines() {
        let i = line?;
        vec.push(
            i.parse()?
        );
    }

    Ok(vec)
}

fn main() -> Result<()> {
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

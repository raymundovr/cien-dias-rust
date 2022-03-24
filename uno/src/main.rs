use std::env;
use std::str::FromStr;

fn biggest(one: usize, two: usize) -> usize {
    match one > two {
        true => one,
        _ => two,
    }
}

fn main() {
    let numbers: Vec<usize> = env::args()
        .skip(1)
        .map(|a| usize::from_str(&a).expect("Cannot convert"))
        .collect();
    if numbers.len() < 2 {
        println!("Need at least two numbers!");
        std::process::exit(1);
    }

    let mut b = numbers.first().unwrap().clone();
    for n in numbers {
        b = biggest(b, n);
    }

    println!("Biggest {:?}", b);

    println!("Done!");
}

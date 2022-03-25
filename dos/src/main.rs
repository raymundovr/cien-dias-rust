use std::env;

fn parse_args(args: Vec<String>) -> Vec<(usize, usize)> {
    let mut parsed = Vec::new();

    for arg in args {
        let parts: Vec<&str> = arg.split('x').collect();
        if parts.len() != 2 {
            panic!("Invalid argument {}", arg);
        }

        let (l, r) = (
            parts[0].parse().expect("Invalid argument"),
            parts[1].parse().expect("Invalid argument"),
        );
        parsed.push((l, r));
    }

    parsed
}

fn add_and_multiply(numbers: Vec<(usize, usize)>) -> usize {
    let mut result = 0;
    for n in numbers {
        result += n.0 * n.1;
    }

    result
}

fn perform_operation(args: Vec<String>) -> usize {
    if args.len() == 0 {
        eprintln!("Error. Ejemplo de uso: `cargo run 10x20 2x4`");
        std::process::exit(1);
    }

    add_and_multiply(parse_args(args))
}

fn main() {
    let args: Vec<String> = env::args().skip(1).collect();
    println!("Result {}", perform_operation(args));
}

#[test]
fn test_correct() {
    assert_eq!(perform_operation(vec!["4x5".into(), "5x4".into()]), 40);
}

#[test]
#[should_panic]
fn test_incorrect_args() {
    assert_ne!(perform_operation(vec!["a".into()]), 50);
}

#[test]
#[should_panic]
fn test_not_a_number() {
    assert_ne!(perform_operation(vec!["10xj".into()]), 10);
}

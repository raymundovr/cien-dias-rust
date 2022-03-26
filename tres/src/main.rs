use std::env::args;
use std::fs::File;
use std::io::prelude::*;
use std::io::BufReader;

/// This exercise reads a file with different instruction lines in the format
/// "op arg_one arg_two"
/// Examples:
/// add 5x10 10x6
/// mix abc def
/// Then writes for each line its output of the operation in a different file
/// Examples:
/// add_res 110
/// mix_res adbecf
/// When the line has an incorrect format then it omits it

#[derive(Debug, PartialEq)]
enum Operation {
    Add,
    Mix,
}

#[derive(Debug, PartialEq)]
struct Instruction {
    operation: Operation,
    arguments: Vec<String>,
}

impl Instruction {
    fn new(operation: Operation, arguments: &[&str]) -> Instruction {
        Self {
            operation,
            arguments: arguments.iter().map(|a| String::from(*a)).collect(),
        }
    }
}

fn parse_instruction(line: &str) -> Option<Instruction> {
    let segments: Vec<&str> = line.split(" ").collect();

    if segments.len() < 2 {
        return None;
    }

    match segments.first() {
        Some(&op) => {
            let operation: Option<Operation> = match op {
                "add" => Some(Operation::Add),
                "mix" => Some(Operation::Mix),
                _ => None,
            };

            if operation != None {
                return Some(Instruction::new(operation.unwrap(), &segments[1..]));
            } else {
                return None;
            }
        }
        None => None,
    }
}

fn main() -> std::io::Result<()> {
    if args().len() != 2 {
        eprintln!("Invalid arguments. Use `cargo run /path/to/file/name.txt`");
        std::process::exit(1);
    }

    let file_path = args().last().unwrap();
    println!("Processing file {}.", file_path);

    let file = File::open(file_path)?;
    println!("File loaded...");

    let buf_reader = BufReader::new(file);

    for l in buf_reader.lines() {
        match l {
            Ok(content) => {
                println!("{}", content);
                parse_instruction(&content);
            }
            _ => eprintln!("Error reading line {:?}", l),
        }
    }

    Ok(())
}

#[test]
fn test_parse_instruction_add() {
    let instruction = parse_instruction("add 10x1 2x5");
    assert_ne!(instruction, None);
    let i = instruction.unwrap();
    assert_eq!(i.operation, Operation::Add);
    assert_eq!(i.arguments, vec!["10x1", "2x5"]);
}

#[test]
fn test_parse_instruction_mix() {
    let instruction = parse_instruction("mix abc def");
    assert_ne!(instruction, None);
    let i = instruction.unwrap();
    assert_eq!(i.operation, Operation::Mix);
    assert_eq!(i.arguments, vec!["abc", "def"]);
}

#[test]
fn test_parse_instruction_no_args() {
    let instruction = parse_instruction("");
    assert_eq!(instruction, None);

    let instruction = parse_instruction("single");
    assert_eq!(instruction, None);
}

#[test]
fn test_parse_instruction_invalid_op() {
    let instruction = parse_instruction("something a");
    assert_eq!(instruction, None);
}

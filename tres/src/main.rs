use std::env::args;
use std::fs::File;
use std::io::prelude::*;
use std::io::BufReader;
use std::str::FromStr;

/// This exercise reads a file with different instruction lines in the format
/// "op arg_one arg_two"
/// Examples:
/// add 5x10 10x6
/// mix abc def
/// Then writes for each line its output of the operation in a different file
/// Examples:
/// 110
/// adbecf
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

fn run_add(arguments: Vec<String>) -> String {
    let mut result: usize = 0;
    for a in arguments {
        let operands: Vec<&str> = a.split("x").collect();
        result += operands.iter().fold(1, |acc, x| {
            acc * usize::from_str(&x).ok().unwrap_or_default()
        });
    }
    result.to_string()
}

fn run_mix(arguments: Vec<String>) -> String {
    let max_length: usize = arguments.iter().fold(0, |acc, arg| {
        if arg.len() > acc {
            return arg.len();
        }
        acc
    });

    let mut result: Vec<char> = vec![];

    for i in 0..max_length {
        for j in 0..arguments.len() {
            if i < arguments[j].chars().count() {
                let c = arguments[j].chars().nth(i).unwrap();
                result.push(c);
            }
        }
    }

    result.iter().collect::<String>()
}

fn run_instruction(content: &str) -> String {
    if let Some(instruction) = parse_instruction(&content) {
        return match instruction.operation {
            Operation::Add => run_add(instruction.arguments),
            Operation::Mix => run_mix(instruction.arguments),
        };
    }

    String::from("")
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
    let mut output = File::create("./output.txt")?;

    for l in buf_reader.lines() {
        println!("Processing {:?}", l);
        let result = match l {
            Ok(content) => {
                run_instruction(&content)
            }
            _ => String::from("error"),
        };
        writeln!(output, "{}", result);
    }

    Ok(())
}

#[test]
fn test_parse_instruction_add() {
    let result = run_instruction("add 10x1 2x5");
    assert_ne!(result, "");
    assert_eq!(result, "20");
}

#[test]
fn test_parse_instruction_mix() {
    let result = run_instruction("mix abc def");
    assert_ne!(result, "");
    assert_eq!(result, "adbecf");
}

#[test]
fn test_parse_instruction_no_args() {
    let result = run_instruction("single");
    assert_eq!(result, "");
}

#[test]
fn test_parse_instruction_invalid_op() {
    let result = run_instruction("something a");
    assert_eq!(result, "");
}

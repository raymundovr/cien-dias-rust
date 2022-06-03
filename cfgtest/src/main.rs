mod iomod;
use iomod::{io_function_one};

fn main() -> Result<(), std::io::Error> {
    println!("Running in non test mode");
    let res = io_function_one()?;
    println!("{}", res);
    Ok(())
}

#[cfg(test)]
mod test {
    use super::*;
    #[test]
    fn test_funcion_is_executed() {
        let res = io_function_one();
        assert!(res.is_ok());
        let text = res.unwrap();
        assert_eq!(text, "This function is only used for tests".to_string());
        println!("{}", text);
    }
}
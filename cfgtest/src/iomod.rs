#[cfg(not(test))]
pub fn io_function_one() -> Result<String, std::io::Error> {
    Ok("This function requests data from I/O".to_string())
}

#[cfg(test)]
pub fn io_function_one() -> Result<String, std::io::Error> {
    Ok("This function is only used for tests".to_string())
}
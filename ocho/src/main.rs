use termion::{color, cursor, input::TermRead};
use std::io::{stdout, stdin};

fn read_passwd() -> Option<String> {
    let stdout = stdout();
    let mut stdout = stdout.lock();
    let stdin = stdin();
    let mut stdin = stdin.lock();

    let pass = stdin.read_passwd(&mut stdout);

    if let Ok(pass) = pass {
        pass
    } else {
        None
    }
}

fn read_user() -> Option<String> {
    let stdin = stdin();
    let mut stdin = stdin.lock();

    let user = stdin.read_line();

    if let Ok(user) = user {
        user
    } else {
        None
    }
}

fn main() {
    println!("{}{}{}Login", color::Fg(color::Blue), termion::clear::All, cursor::Goto(1,1));
    
    println!("{}{}Enter user: ", color::Fg(color::White), cursor::Goto(1,2));
    if let Some(user) = read_user() {
        println!("{}", user);
    } else {
        println!("Error reading user");
    }

    println!("{}{}Enter password: ", color::Fg(color::Red), cursor::Goto(1,3));
    if let Some(password) = read_passwd() {
        println!("{}", password);
    } else {
        println!("Error reading password");
    }
}

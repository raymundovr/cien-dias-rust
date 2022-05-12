use once::{Fermium, simulate};

fn main() {
    let mut f = Fermium {
        size: 5.32,
        growth_rate: 0.002,
    };

    let result = simulate(&mut f, 30);

    println!("Final result {:.2}", result);
}
pub struct Fermium {
    pub size: f64,
    pub growth_rate: f64,
}

impl Fermium {
    pub fn grow(&mut self) {
        self.size *= 1.0 + self.growth_rate;
    }
}

pub fn simulate(f: &mut Fermium, days: usize) -> f64 {
    for _ in 0..days {
        f.grow();
    }

    return f.size
}
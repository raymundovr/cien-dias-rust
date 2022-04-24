
use std::fmt;

pub struct Celsius(f64);
pub struct Farenheit(f64);

impl Celsius {
    pub fn new(c: f64) -> Self {
        Celsius(c)
    }

    pub fn into_farenheit(&self) -> Farenheit {
        Farenheit::new(self.0 * 1.8 + 32.0)
    }
}

impl Farenheit {
    pub fn new(f: f64) -> Self {
        Farenheit(f)
    }

    pub fn into_celsius(&self) -> Celsius {
        Celsius::new((self.0 - 32.0) / 1.8)
    }
}

impl fmt::Display for Celsius {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        write!(f, "{} °C", self.0)
    }
}

impl fmt::Display for Farenheit {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        write!(f, "{} °F", self.0)
    }
}

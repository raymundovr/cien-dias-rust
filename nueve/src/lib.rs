use wasm_bindgen::prelude::*;

#[wasm_bindgen]
pub struct Pointer {
    x: u32,
    y: u32,
    tail: u32,
}

#[wasm_bindgen]
impl Pointer {
    pub fn new(x: u32, y: u32) -> Self {
        let tail = x.saturating_sub(10);
        Pointer { x, y, tail }
    }

    pub fn get_tail(&self) -> u32 {
        self.tail
    }
}


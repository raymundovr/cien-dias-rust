use wasm_bindgen::prelude::*;

#[wasm_bindgen]
pub struct State {
    pub count: i64,
}

#[wasm_bindgen]
impl State {
    pub fn new() -> State {
        State { count: 0 }
    }

    pub fn increment(&mut self) {
        self.count += 1;
    }

    pub fn decrement(&mut self) {
        self.count -= 1;
    }
}
/**
 * Función para generar un WASM
 * rustc --target wasm32-unknown-unknown -O --crate-type=cdylib anios-diff.rs -o anios-diff.wasm
 */

#[no_mangle]
pub extern "C" fn diff(start: i32, end: i32) -> i32 {
    end - start
}
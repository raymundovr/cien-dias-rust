use anyhow::Result;
use wasmtime::*;

fn main() -> Result<()> {
    let engine = Engine::default();
    let mut store = Store::new(&engine, ());
    let module = Module::from_file(&engine, "anios-diff.wasm")?;
    let instance = Instance::new(&mut store, &module, &[])?;

    let diff = instance.get_typed_func::<(i32, i32), i32, _>(&mut store, "diff")?;

    let anios = diff.call(&mut store, (1985, 2022))?;

    println!("La diferencia es {}", anios);
    Ok(())
}

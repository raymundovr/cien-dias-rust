mod generated;
use cuckoofilter::CuckooFilter;
pub use generated::*;
use lazy_static::*;
use std::collections::hash_map::DefaultHasher;
use wapc::prelude::*;
use wapc_guest as wapc;

lazy_static! {
    static ref CUCKOO_FILTER: CuckooFilter<DefaultHasher> = {
        let mut filter: CuckooFilter<DefaultHasher> = CuckooFilter::new();
        let words = vec!["esto", "es", "una", "prueba"];

        for word in &words {
            filter.add(word).expect("Cannot insert word");
        }

        filter
    };
}

#[no_mangle]
pub fn wapc_init() {
    Handlers::register_does_word_exist(does_word_exist);
    Handlers::register_echo(echo);
}

fn does_word_exist(word: String) -> HandlerResult<bool> {
    Ok(CUCKOO_FILTER.contains(&word))
}

// EchoInput has been already defined in generated.rs
fn echo(input: EchoInput) -> HandlerResult<EchoInput> {
    Ok(EchoInput {
        x: format!("Echooox {}", input.x),
        y: format!("Echoooy {}", input.y),
    })
}

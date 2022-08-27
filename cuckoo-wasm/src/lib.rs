use wasm_bindgen::prelude::*;
use cuckoofilter::CuckooFilter;
use std::collections::hash_map::DefaultHasher;
use lazy_static::*;

lazy_static! {
    static ref CUCKOO_FILTER: CuckooFilter<DefaultHasher> = {
        let mut filter: CuckooFilter<DefaultHasher> = CuckooFilter::new();
        let words = vec!["texto", "marimba", "usuario", "ejemplo"];
        for word in &words {
            filter.add(word).expect("Cannot add word to filter");
        }

        filter
    };
}

#[wasm_bindgen]
pub fn does_word_exist(word: &str) -> JsValue {
    let exists = CUCKOO_FILTER.contains(word);

    JsValue::from_serde(&exists).unwrap()
}

pub fn bool_exists(word: &str) -> bool {
    CUCKOO_FILTER.contains(word)
}

#[cfg(test)]
mod test {
    use crate::bool_exists;
    #[test]
    fn check_word_exists() {
        assert_eq!(bool_exists("texto"), true);
    }
}

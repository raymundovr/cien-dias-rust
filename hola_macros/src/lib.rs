use proc_macro::TokenStream;

#[proc_macro_attribute]
pub fn hola_macros(attr: TokenStream, item: TokenStream) -> TokenStream {
    println!("attr: \"{}\"", attr.to_string());
    println!("item: \"{}\"", item.to_string());

    item
}

#[proc_macro_attribute]
pub fn implement_hello(attr: TokenStream, item: TokenStream) -> TokenStream {
    println!("attr: \"{}\"", attr.to_string());
    println!("item: \"{}\"", item.to_string());

    item
}
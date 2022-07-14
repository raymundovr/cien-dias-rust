use proc_macro::TokenStream;
use quote::quote;
use syn;
use syn::parse_macro_input;

struct HolaParams(syn::Ident);

#[proc_macro_derive(HolaMacrosDerive, attributes(hola))]
pub fn hola_macros_derive(input: TokenStream) -> TokenStream {
    // Construye el árbol de sintáxis para poder manipularlo
    let ast: syn::DeriveInput = syn::parse(input).unwrap();

    println!("Name attrs = {:?}", &ast.attrs);
    
    impl_hello_macro(&ast)
}

fn impl_hello_macro(ast: &syn::DeriveInput) -> TokenStream {
    // ident es el identificador (nombre) de la entidad (struct, enum, etc).
    let name = &ast.ident;

    // quote! genera la secuencia de tokens (código) para el compilador
    let gen = quote! {
        // #name será reemplazado por la variable definida arriba
        impl HolaMacro for #name {
            fn hola_macro() {
                // stringify es nativa de rust, no evalúa expresiones
                println!("¡Hola Macro, Me llamo {}!", stringify!(#name));
            }
        }
    };

    gen.into()
}

#[proc_macro_attribute]
pub fn hola_macros_attribute(attr: TokenStream, item: TokenStream) -> TokenStream {
    let a = parse_macro_input!(attr as syn::AttributeArgs);
    println!("Attributes my friend: {:?}", a);
    impl_hello_attribute(item)
}

fn impl_hello_attribute(item: TokenStream) -> TokenStream {
    let ast: syn::DeriveInput = syn::parse(item).unwrap();
    let name = &ast.ident;
    
    let gen = quote! {
        #ast
        impl HolaMacro for #name {
            fn hola_macro() {
                println!("¡Hola attribute, me llamo {}! ", stringify!(#name));
            }
        }
    };

    gen.into()
}
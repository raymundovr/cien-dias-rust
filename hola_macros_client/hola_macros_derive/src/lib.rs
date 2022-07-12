use proc_macro::TokenStream;
use quote::quote;
use syn;

#[proc_macro_derive(HolaMacrosDerive)]
pub fn hola_macros_derive(input: TokenStream) -> TokenStream {
    // Construye el árbol de sintáxis para poder manipularlo
    let ast: syn::DeriveInput = syn::parse(input).unwrap();
    
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

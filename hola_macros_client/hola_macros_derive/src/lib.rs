use proc_macro::TokenStream;
use quote::quote;
use syn::{self, Attribute, DeriveInput, Lit, Meta, NestedMeta};

fn extract_string_attr(attrs: &[Attribute], name: &str) -> String {
    let attr = attrs
        .iter()
        .find(|a|
            a.path.is_ident(name)
        )
        .unwrap_or_else(|| panic!("Se espera el atributo `{}`", name))
        ;

    let meta = attr.parse_meta().expect(&format!("Atributo `{}` no está correctamente definido", name));
    let nested = match meta {
        Meta::List(m) => m.nested,
        _ => panic!("Atributo {} malformado", name)
    };
    let literal = nested.first().unwrap_or_else(|| panic!("Atributo {} no contiene el valor esperado", name));
    match literal {
        NestedMeta::Lit(Lit::Str(l)) => l.value(),
        _ => panic!("Atributo {} malformado", name)
    }
}

#[proc_macro_derive(HolaMacrosDerive, attributes(hola_uno))]
pub fn hola_macros_derive(input: TokenStream) -> TokenStream {
    // Construye el árbol de sintáxis para poder manipularlo
    let ast: DeriveInput = syn::parse(input).expect("Error al crear HolaMacrosDerive");
    impl_hello_macro(&ast)
}

fn impl_hello_macro(ast: &syn::DeriveInput) -> TokenStream {
    // ident es el identificador (nombre) de la entidad (struct, enum, etc).
    let ident = &ast.ident;
    let name = extract_string_attr(&ast.attrs, "hola_uno");

    // quote! genera la secuencia de tokens (código) para el compilador
    let gen = quote! {
        // #name será reemplazado por la variable definida arriba
        impl MiTrait for #ident {
            fn me_llamo() -> String {
                // stringify es nativa de rust, no evalúa expresiones
                format!("¡Hola Macro, Me llamo {}!", stringify!(#name))
            }
        }
    };

    gen.into()
}

#[proc_macro_attribute]
pub fn hola_macros_attribute(attr: TokenStream, item: TokenStream) -> TokenStream {
    // let a = parse_macro_input!(attr as syn::AttributeArgs);
    // println!("Attributes my friend: {:?}", a);
    item
    // impl_hello_attribute(item)
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
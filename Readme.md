# Cien días de código en Rust 
# 💯🦀

Los nombres de los proyectos no reflejan los días. Sólo siguen su propia secuencia.

## Hello gRPC

Un archivo `build.rs` en el directorio raíz del proyecto controla el proceso de generación del binario. Ver [Build Scripts](https://doc.rust-lang.org/cargo/reference/build-scripts.html).

Una declaración de binarios puede realizarse en `Cargo.toml`.
```
[[bin]]
name = "hellogrpc-server"
path = "src/server.rs"

[[bin]]
name = "hellogrpc-client"
path = "src/client.rs"
```

El proceso `build` genera código que permite implementar los servicios gRPC.

Se necesita que tanto cliente como servidor definan un módulo donde las estructuras que fueron pre-generadas con tonic sean implementadas o usadas.

El servidor o cliente deben incluir esto de la siguiente manera
```rust
pub mod xxx_yyy {
    tonic::include_proto!("package_name");
}
```

Donde `package_name` es el que está definido dentro del archivo .proto.

## Streams
[TokioStream](https://docs.rs/tokio-stream/latest/tokio_stream/) es el huacal que proporciona helpers para trabajar con Streams usando Tokio.

## Logs
Rust cuenta con una fachada para logs con el huacal [log](https://crates.io/crates/log). Este huacal sólo proporciona las funcionalidades, posteriormente hay que usar una implementación concreta, por ejemplo [env_logger](https://crates.io/crates/env_logger).

Posteriormente hay que ejecutar los binarios con un variable de entorno que indique el nivel de log que se desea mostrar
```bash
RUST_LOG=trace cargo run
```

Si no se especifica esto el nivel por default es "ERROR".

Dado que es el binario el que debe proporcionar la implementación concreta las librerías pueden depender sólo de log y así proporcionar la funcionalidad sin comprometer cómo el cliente desea imprimir sus logs.

## RabbitMQ

Usando el crate [amiquip](https://docs.rs/amiquip/latest/amiquip/).

### Correlation ID
Un mensaje es enviado a una cola predefinida por el actor A. El mensaje contiene un campo "Correlation ID" (CID) que contiene información para el procesador del mensaje. El actor B procesa el mensaje y lo envía de vuelta a la cola con el mismo CID. Actor A recupera el mensaje.

## Cuckoo WAPC
### Setup
```bash
# Requires wapc-cli
; wapc new rust cuckoo-wapc
; cd cuckoo-wapc
# create src/lib.rs
```
El proyecto es creado como tipo `rlib`. Este tipo de crate indica que se generará un "Rust library" intermedio que es usado por el compilador como futura referencia cuando genere ejecutables o librerías enlazados estáticamente.
Ver: https://doc.rust-lang.org/reference/linkage.html

### Para generar
El proyecto genera un archivo `generated.rs` que es usado en `lib.rs`. Está basado en las interfaces declaradas en el `schema.widl`.
```bash
; wapc generate codegen.yaml
```

```rust
...
mod generated;
pub use generated::*;
...

#[no_mangle]
pub fn wapc_init() {
    // Esta función viene de generated
    Handlers::register_does_word_exist(does_word_exist);
}
```

Es importante notar que los valores retornados por las funciones son arropados por `HandlerResult`
```rust
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
```

```bash
; make
```

Ahora usamos Node.js como host del módulo WASM. Así se puede invocar desde línea de comandos.
```bash
# r@Raymundos-MBP  in ~/Aprendizaje/rust/CienDiasDeCodigo/cuckoo-wapc/nodehost on git:main x [19:50:36] 🙃
; node nodehost.js ../target/wasm32-unknown-unknown/release/cuckoo_wapc.wasm does_word_exist '{"word":"foo"}'
Result: false

# r@Raymundos-MBP  in ~/Aprendizaje/rust/CienDiasDeCodigo/cuckoo-wapc/nodehost on git:main x [19:50:45] 🙃
; node nodehost.js ../target/wasm32-unknown-unknown/release/cuckoo_wapc.wasm does_word_exist '{"word":"esto"}'
Result: true
```

## Cuckoo WASM

### Setup
```bash
; cargo new --lib cuckoo-wasm
; wasm-pack build
; npm init wasm-app www
; cd www
; yarn install
```

Ahora hay que agregar `dependencies` en `package.json`
```json
"dependencies": {
    "cuckoo-wasm": "../pkg"
  },
```
Entonces se puede ejecutar
```bash
; yarn start
```

```toml
...
[lib]
crate-type = ["cdylib"]

[dependencies]
wasm-bindgen = "0.2.18"
cuckoofilter = "0.5.0"
lazy_static = "1.4.0"
...
```


## TOML
Se puede usar serde con el crate [toml](https://crates.io/crates/toml)

## Files
### Lectura
```rust
use std::fs::File;
use std::io::Read;

...
let mut toml_file = String::new();
    
let mut file_contents = File::open(file_path).expect("Cannot open settings file");
file_contents.read_to_string(&mut toml_file).expect("Cannot load settings file");
```
## Mongo DB Lib
https://gitlab.com/raymundo.vr/mongo-db-lib

## Lib

### Re-exportar librería interna

// Re-export
pub use libinterna::modulo;

## Cargo

### Workspace

- Varios paquetes pueden compartir dependencias y un Cargo.lock si son definidos en un workspace.
- Varios paquetes comparten un solo `target/`
- Varios paquetes comparten una sección `[patch]` y `[profile.*]` en su manifiesto (Cargo.toml)

https://doc.rust-lang.org/cargo/reference/workspaces.htmlp

Existen dos tipos:

- Root package. Se puede crear workspace a partir de un paquete mediante la propiedad `[workspace]` dentro del Cargo.toml de dicho paquete. A partir de entonces el 
directorio donde esta este Cargo.toml es la raíz del workspace.
- Virtual manifest. Se pueden mantener varios paquetes no primarios o separados definiendo un archivo Cargo.toml con una sola propiedad `[workspace]` y sus miembros.


## Building Release - Diferente Target

```bash
$ rustup target add x86_64-unknown-linux-gnu
$ cargo build -r --target x86_64-unknown-linux-gnu
```
## Async
[Futures-rs](https://crates.io/crates/futures) es una librería que provee utilidades para la programación asíncrona en Rust.

- Futures
- Streams. Serie de valores producidos asíncronamente
- Sinks. Escritura de datos asíncronos
- Executors. Responsables de ejecutar tareas asíncronas

https://docs.rs/futures/0.3.21/futures/

## Concurrency
[Crossbeam](https://crates.io/crates/crossbeam) es un huacal que provee múltiples herramientas y estructuras de datos para tareas concurrentes.

[Rayon](https://crates.io/crates/rayon) provee implementaciones en paralelo sobre `iterator`s. Usa un método llamado _work-stealing_ que se ocupa de distribuir tareas en los hilos del CPU correctamente. Es mejor que un simple _fork/join_.

### Read/Write Locks (RwLock<T>)

Mutex tienen un solo `lock`. RwLock tiene un `lock` para `read` y uno para `write`. El lock para `write` funciona al igual que el `mutex`, i.e., es exclusivo y mutable. El lock para `read` es no mutable, similar a una referencia compartida.

Una forma de observar su uso es en la configuración de aplicaciones. Normalmente una aplicación carga su configuración una vez y dentro de ella se comparten los datos en diversos componentes. Si la configuración debe ser recargada el `RwLock` entrará en `lock` para write.

```rust
use std::sync::RwLock;

struct App {
    config: RwLock<AppConfig>,
}
...
// Read the config
fn is_setting_x_enabled(&self) -> bool {
    let config = self.config.read().unwrap();
    config.setting_x == "Yes"
}
...
// Write the config
fn reload_config(&self) -> io::Result<()> {
    let new_config = AppConfig::load()?;
    let mut config_guard = self.config.write().unwrap();
    *config_guard = new_config;
    Ok(())
}

```

### std::sync::Condvar
Los procesos a veces no tienen mecanismos para detectar que todos sus hilos están sincronizados y poder terminar de forma idónea (por ejemplo cuando un servidor termina y sus hilos son terminados).

`Condvar` funciona para poder esperar hasta que los hilos notifiquen que han realizado su labor.

### Atomics std::sync::atomic
Proporciona estructuras atómicas que pueden ser usadas por múltiples hilos para lectura y escritura sin causar accesos incorrectos a datos.

Cada estructura arropa a tipos de datos primitivos y proporciona sus propios métodos para realizar operaciones. Está limitado a números, booleanos y apuntadores.

No provocan mayores cargas al sistema, contrario a `Mutex` y `channel`.

```rust
use std::sync::atomic::{AtomicIsize, Ordering};

let atom = AtomicIsize::new(0);
// add 1
atom.fetch_add(1, Ordering::SeqCst);
```
`Ordering` es el ordenamiento en memoria. Está de alguna forma relacionado con transacciones. Aparentemente `SeqCst` es lo que hay que usar cuando no se está seguro.

Se puede observar su uso en una cancelación de tarea. Primero se define una variable atómica que va a contener una bandera de cancelación. Esta bandera puede ser pasada de forma segura entre hilos.
```rust
use std::sync::Arc;
use std::sync::atomic::AtomicBool;

let cancel_flag = Arc::new(AtomicBool::new(false));
let worker_cancel_flag = cancel_flag.clone();
```

Ahora en el `worker` hacemos uso de la bandera
```rust
use std::sync::thread;
use std::sync::atomic::Ordering;

let worker_handle = thread::spawn(move || {
    for element in collection {
        do_some_work(element);
        if worker_cancel_flag.load(Ordering::SeqCst) {
            return None;
        }
        Some(result)
    }
});
```

### Variables globales con lazy_static
[lazy_static](https://crates.io/crates/lazy_static) es un huacal que permite definir una macro que inicializa variables estáticas cuando son referenciadas por primera vez.

La ventaja primordial que otorga es la capacidad de satisfacer al compilador en su necesidad de conocer tamaños y órdenes de acceso en memoria.

## Actix URL parámetros
Path extractor no funciona para `ObjecId`.
```rust
#[get("/occurrence/{track_id}")]
pub async fn get_track_occurrences(
    track_id: web::Path<ObjectId>,
    app_data: web::Data<AppState>,
) -> impl Responder { ... }
```
Retorna `unsupported type: 'any'`

Sólo soporta un argumento para parámetros, si tienes más de uno hay que usar tuplas
```rust
#[patch("/track/{track_id}/observation/{observation_id}")]
pub async fn update_observation(
    path: web::Path<(String, String)>,
    app_data: web::Data<AppState>,
    observation_data: web::Json<UpdateObservationPayload>,
) -> impl Responder {
    let (track_id, observation_id) = path.into_inner();
...
}
```

## Macros

Definidas como
```rust
macro_rules! nombre_macro {
    pattern => {
        ...
    },
    ...
}
```
Pattern|Meaning
---|---
$( ... )*|Match 0 or more times with no separator
$( ... ),*|Match 0 or more times, separated by commas
$( ... );*|Match 0 or more times, separated by semicolons
$( ... )+|Match 1 or more times with no separator
$( ... ),+|Match 1 or more times, separated by commas
$( ... );+|Match 1 or more times, separated by semicolons
$( ... )?|Match 0 or 1 times with no separator
$( ... ),?|Match 0 or 1 times, separated by commas
$( ... );?|Match 0 or 1 times, separated by semicolons

Ejemplo:
```rust
macro_rules! vec {
    ($elem:expr ; $n:expr) => {
        ::std::vec::from_elem($elem, $n)
    };
    ( $( $x:expr ),* ) => {
        <[_]>::into_vec(Box::new([ $( $x ),* ]))
    };
    ( $( $x:expr ),+ ,) => {
        vec![ $( $x ),* ]
    };
}
```

Fragment type|Matches (with examples)|Can be followed by...
---|---|---
expr|An expression: 2 + 2, "udon", x.len()|=> , ;
stmt|An expression or declaration, not including any trailing semicolon (hard to use; try expr or block instead)|=> , ;
ty|A type: String, Vec<u8>, (&str, bool), dyn Read + Send|=> , ; = | { [ : > as where
path|A path (discussed): ferns, ::std::sync::mpsc|=> , ; = | { [ : > as where
pat|A pattern (discussed):_, Some(ref x)|=> , = | if in
item|An item (discussed): struct Point { x: f64, y: f64 }, mod ferns;|Anything
block|A block (discussed): { s += "ok\n"; true }|Anything
meta|The body of an attribute (discussed): inline, derive(Copy, Clone), doc="3D models."|Anything
literal|A literal value: 1024, "Hello, world!", 1_000_000f64|Anything
lifetime|A lifetime: 'a, 'item, 'static|Anything
vis|A visibility specifier: pub, pub(crate), pub(in module::submodule)|Anything
ident|An identifier: std, Json, longish_variable_name|Anything
tt|A token tree (see text): ;, >=, {}, [0 1 (+ 0 1)]|Anything

## Procedural macros
Son macros que permiten enriquecer tipos en Rust. Se declaran 
```toml
...
[lib]
procedural-macro = true
...
```
Las macros necesitan mantener su propia _sanidad_ ya que son incrustadas directamente en el código que las invoca, por lo tanto están sujetas al contexto que les rodea. Es decir, las variables definidas en la macro deben tener nombres realmente únicos para evitar colisiones y el `use` debe invocar al espacio global, ejemplo `::std::option::Option`.
### Funcionales
Para macros que son funciones, invocadas como `my_macro!()` se necesita una función con el atributo `#[proc_macro]` sobre la función que generará el nuevo código.

```rust
// proc_macro_examples
use proc_macro::TokenStream;

#[proc_macro]
pub fn make_answer(_item: TokenStream) -> TokenStream {
    "fn answer() -> u32 { 42 }".parse().unwrap()
}


// client
use proc_macro_examples::make_answer;

make_answer!();

fn main() {
    println!("{}", answer());
}
```

### Derive
Para macros que generan código mediante el atributo `#derive()`. Se usan en `enum`s, `struct`s o `union`s.

Para declararlas se usa `#[proc_macro_derive]` sobre la función que enriquecerá el código. Esta función tiene el encabezado `fn (TokenStream) -> TokenStream`.

```rust
// macro
use proc_macro::TokenStream;

#[proc_macro_derive(AnswerFn)]
pub fn derive_answer_fn(_item: TokenStream) -> TokenStream {
    "fn answer() -> u32 { 42 }".parse().unwrap()
}

// cliente

use proc_macro_examples::AnswerFn;

#[derive(AnswerFn)]
struct Struct;

fn main() {
    assert_eq!(42, answer());
}
```

Estas macros hacen uso de las librerías [syn](https://crates.io/crates/syn) (para generar el árbol de sintáxis del código a partir de una secuencia de tokens) y [quote](https://crates.io/crates/quote) (que produce los tokens que son retornados al compilador a partir del árbol de sintáxis).

### Attribute-like
En mongolibderive.
Similares a derive y también pueden ser aplicadas a funciones.

La función que genera el código de la macro tiene el encabezado
```rust
#[proc_macro_attribute]
fn my_macro(attr: TokenStream, item: TokenStream) -> TokenStream
```
Donde 
- `attr` son los parámetros que se le pasan al atributo. Ejemplo: `#[route(GET, "/")]` tiene `attr` = `GET, "/"`.
- `item` es el elemento al que se le aplica la macro, ex: struct, fn, etc.

```rust
#[proc_macro_attribute]
pub fn hola_macros_attribute(attr: TokenStream, item: TokenStream) -> TokenStream {
    impl_hello_attribute(item)
}

fn impl_hello_attribute(item: TokenStream) -> TokenStream {
    let ast: syn::DeriveInput = syn::parse(item).unwrap();
    let name = &ast.ident;

    let gen = quote! {
        // ¡puede incrustar el elemento entero! 🥳
        #ast
        impl HolaMacro for #name {
            fn hola_macro() {
                println!("¡Hola attribute, me llamo {}!", stringify!(#name));
            }
        }
    };

    gen.into()
}
```

### Darling
[Darling](https://crates.io/crates/darling) es una librería que ayuda a transformar `TokenStream`s a estructuras para poder trabajar mejor con macros.

```rust
// proc-macro lib

#[macro_use]
extern crate darling;

#[derive(Debug, FromDeriveInput)]
#[darling(attributes(mi_nombre))]
struct HolaDarlingOpts {
    ident: Ident,
    nombre: Option<String>,
    apellidos: Option<String>,
}

#[proc_macro_derive(HolaDarling, attributes(mi_nombre))]
pub fn hola_darling(input: TokenStream) -> TokenStream {
    let ast: DeriveInput = syn::parse(input).expect("Error al crear HolaMacrosDerive");
    let parsed: Result<HolaDarlingOpts, darling::Error> = darling::FromDeriveInput::from_derive_input(&ast);
    println!("{:?}", parsed);
    let gen = quote!{};

    gen.into()
}
```
```rust
// cliente
#[derive(HolaDarling)]
#[mi_nombre(nombre = "Raymundo", apellidos = "Vásquez Ruiz")]
struct Nombre;
```

Resulta en
```
Ok(HolaDarlingOpts { ident: Ident { ident: "Nombre", span: #0 bytes(409..415) }, attrs: [], nombre: Some("Raymundo"), apellidos: Some("Vásquez Ruiz") })
```
## ObjectId + Serialize + String
```rust
use serde::Serializer;
use mongodb::bson::oid::ObjectId;

pub fn serialize_option_oid_as_string<S>(oid: &Option<ObjectId>, serializer: S) -> Result<S::Ok, S::Error> 
    where S: Serializer
{
    match oid {
        Some(ref oid) => serializer.serialize_some(oid.to_string().as_str()),
        None => serializer.serialize_none()
    }
}

pub fn serialize_oid_as_string<S>(oid: &ObjectId, serializer: S) -> Result<S::Ok, S::Error>
    where S: Serializer
{
    serializer.serialize_str(oid.to_string().as_str())
}
```

## CORS
La create `actix_cors` opera este modo.


## Chrono
Para ser usado con serde
```toml
# Cargo.toml
chrono = {version = "0.4", features = ["serde"] }
```

## Files
Define opciones para abrir.

```rust
use std::fs::OpenOptions;

let log = OpenOptions::new()
    .append(true)  // if file exists, add to the end
    .open("server.log")?;

let file = OpenOptions::new()
    .write(true)
    .create_new(true)  // fail if file exists
    .open("new_file.txt")?;
```

## Formatting
### Format string directives for text

Default	"{}"	"bookends"

Minimum field width	"{:4}"	"bookends"
 	"{:12}"	"bookends    "

Text length limit	"{:.4}"	"book"
 	"{:.12}"	"bookends"
Field width, length limit	"{:12.20}"	"bookends    "
 	"{:4.20}"	"bookends"
 	"{:4.6}"	"booken"
 	"{:6.4}"	"book  "
Aligned left, width	"{:<12}"	"bookends    "
Centered, width	"{:^12}"	"  bookends  "
Aligned right, width	"{:>12}"	"    bookends"
Pad with '=', centered, width	"{:=^12}"	"==bookends=="
Pad '*', aligned right, width, limit	"{:*>12.4}"	"********book"

## Integers
Default	"{}"	"1234"
Forced sign	"{:+}"	"+1234"
Minimum field width	"{:12}"	"        1234"
 	"{:2}"	"1234"
Sign, width	"{:+12}"	"       +1234"
Leading zeros, width	"{:012}"	"000000001234"
Sign, zeros, width	"{:+012}"	"+00000001234"
Aligned left, width	"{:<12}"	"1234        "
Centered, width	"{:^12}"	"    1234    "
Aligned right, width	"{:>12}"	"        1234"
Aligned left, sign, width	"{:<+12}"	"+1234       "
Centered, sign, width	"{:^+12}"	"   +1234    "
Aligned right, sign, width	"{:>+12}"	"       +1234"
Padded with '=', centered, width	"{:=^12}"	"====1234===="
Binary notation	"{:b}"	"10011010010"
Width, octal notation	"{:12o}"	"        2322"
Sign, width, hexadecimal notation	"{:+12x}"	"        +4d2"
Sign, width, hex with capital digits	"{:+12X}"	"        +4D2"
Sign, explicit radix prefix, width, hex	"{:+#12x}"	"      +0x4d2"
Sign, radix, zeros, width, hex	"{:+#012x}"	"+0x0000004d2"
 	"{:+#06x}"	"+0x4d2"

## Floating point
Default	"{}"	"1234.5678"
Precision	"{:.2}"	"1234.57"
 	"{:.6}"	"1234.567800"
Minimum field width	"{:12}"	"   1234.5678"
Minimum, precision	"{:12.2}"	"     1234.57"
 	"{:12.6}"	" 1234.567800"
Leading zeros, minimum, precision	"{:012.6}"	"01234.567800"
Scientific	"{:e}"	"1.2345678e3"
Scientific, precision	"{:.3e}"	"1.235e3"
Scientific, minimum, precision	"{:12.3e}"	"     1.235e3"
 	"{:12.3E}"	"     1.235E3"


## Mongo

### Envolviendo estructuras en documentos BSON
```rust
#[patch("/track/{track_id}/observation/{observation_id}")]
pub async fn update_observation(
    path: web::Path<(String, String)>,
    app_data: web::Data<AppState>,
    observation_data: web::Json<UpdateObservationPayload>,
) -> impl Responder {
    let (track_id, observation_id) = path.into_inner();
    let observation_id = ObjectId::from_str(&observation_id);

    if observation_id.is_err() {
        return HttpResponse::BadRequest();
    }

    let observation_data = observation_data.into_inner();
    // Esto --->
    let doc = match bson::to_bson(&observation_data) {
        Ok(document) => document,
        Err(_) => return HttpResponse::BadRequest(),
    };

    match crud::update_one::<Observation>(
        &app_data.database,
        doc! {
            "_id": observation_id.unwrap(),
            "track": track_id,
        },
	// Esto --->
        mongodb::options::UpdateModifications::Document(doc! {
            "$set": doc
        }),
        None,
    )
    .await
    {
        Some(result) => match result {
            UpdateResult {
                matched_count: 1,
                ..
            } => HttpResponse::Ok(),
            _ => {
                println!("{:?}", result);
                HttpResponse::NotFound()
            },
        },
        None => HttpResponse::InternalServerError(),
    }
}
```

### Aplicando una generalización a CRUD en Mongo.


```rust
pub mod crud {
    pub trait MongoDbModel {
        fn collection_name(&self) -> String;
    }
    use anyhow::Result;
    use mongodb::results::InsertOneResult;
    use mongodb::Database;
    use serde::{Deserialize, Serialize};

    pub async fn create<'de, I: Deserialize<'de> + Serialize + MongoDbModel>(
        instance: &I,
        database: &Database,
    ) -> Result<InsertOneResult> {
        let collection = database.collection::<I>(&instance.collection_name());
        let insert_result = collection.insert_one(instance, None).await?;
        Ok(insert_result)
    }

    pub async fn get_as_vec<I>(
        db: &Database,
        filter: Option<Document>,
        options: Option<FindOptions>,
    ) -> Vec<I>
    where
        I: MongoDbModel + DeserializeOwned + Unpin + Send + Sync,
    {
        let col = db.collection::<I>(&I::collection_name());
        let mut cursor = match col.find(filter, options).await {
            Ok(cursor) => cursor,
            Err(_) => return vec![],
        };
        let mut documents: Vec<I> = Vec::new();
        while let Ok(Some(doc)) = cursor.try_next().await {
            documents.push(doc);
        }
        documents
    }
}
```

`Cursor<T>` sólo puede ser colectado en `Vec` si se implementa `DeserializeOwned + Unpin + Send + Sync`

```rust
#[derive(Deserialize, Serialize)]
pub struct User {
    #[serde(rename="_id", skip_serializing_if = "Option::is_none")]
    pub id: Option<ObjectId>,
    pub name: String,
    #[serde(with = "bson::serde_helpers::chrono_datetime_as_bson_datetime")]
    pub created_at: DateTime<Utc>,
}

impl MongoDbModel for User {
    fn collection_name(&self) -> String {
        "users".to_string()
    }
}
```

## En Saludario
Tests en carpeta separada sólo funcionan si es una librería, es decir, tienen un lib.rs

## Actix y anyhow
```rust
use anyhow::Result;

#[actix_web::main]
async fn main() -> Result<()> {
  ...
  HttpServer::new(|| {
        App::new()
        ...
    })
    .bind(("127.0.0.1", 8080))?
    .run()
    .await
    .map_err(anyhow::Error::from)
}
```
## Auth0
https://crates.io/crates/actix-web-httpauth
https://crates.io/crates/envy
https://docs.rs/actix-web/4.0.1/actix_web/trait.FromRequest.html#implementing-an-extractor

Se puede usar esto para extraer las credentiales de un "authorization: Berarer ****"
https://docs.rs/crate/actix-web-httpauth/0.6.0/source/examples/middleware-closure.rs


## Match Patterns
https://doc.rust-lang.org/reference/patterns.html

Pattern type|Example|Notes
---|---|---
Literal| 100 , "name"|Matches an exact value; the name of a const is also allowed
Range| 0 ..= 100, 'a' ..= 'k', 256..|Matches any value in range, including the end value if given
Wildcard|_|Matches any value and ignores it
Variable|name, mut count|Like _ but moves or copies the value into a new local variable
ref variable|ref field, ref mut field|Borrows a reference to the matched value instead of moving or copying it
Binding with subpattern|val @ 0 ..= 99, ref circle @ Shape::Circle { .. }|Matches the pattern to the right of @, using the variable name to the left
Enum pattern|Some(value), None,Pet::Orca|
Tuple pattern|(key, value), (r, g, b)|
Array pattern|[a, b, c, d, e, f, g], [heading, carom, correction]|
Slice pattern|[first, second], [first, _, third], [first, .., nth], []|
Struct pattern|Color(r, g, b), Point { x, y }, Card { suit: Clubs, rank: n }, Account { id, name, .. }
Reference|&value, &(k, v)|Matches only reference values
Or patterns|'a' &brvbar; 'A', Some("left" &brvbar; "right")|
Guard expression|x if x * x <= r2|In match only (not valid in let, etc.)
## Counter WASM
Al usar la estructura en JS los métodos que construyen son estáticos, para usarlos hay que invocarlos
```rust
#[wasm_bindgen]
impl State {
    pub fn new() -> State {
        State { count: 0 }
    }
}
```
Se usa como
```javascript
import { State } from 'count';

const state = State.new();
```

Los métodos que usan esta nueva instancia son parte de ella

```rust
pub fn increment(&mut self) {
    self.count += 1;
}
```

Se usa como
```javascript
state.increment();
```
## Canvas Plotter
[JS-Sys](https://docs.rs/js-sys/0.3.57/js_sys/) es un crate que ofrece una interfaz entre Rust + WASM y los objetos globales disponibles en JS.

[Web-Sys](https://rustwasm.github.io/wasm-bindgen/api/web_sys/) es un crate que ofrece interfaces con Web APIs. Mediante este crate se puede usar el canvas. Cada API se carga independientemente mediante _features_.

Usar el atributo `#[wasm_bindgen(start)]` indica que la función que decora será ejectuada inmediatamente después de instanciar el módulo en cada hilo.
https://rustwasm.github.io/wasm-bindgen/reference/attributes/on-rust-exports/start.html

## Modules

Se puede definir un módulo de tres formas
1. Módulo en archivo propio: my_mod.rs
2. Módulo en directorio que incluye un archivo mod.rs
3. Módulo en archivo propio, my_mod.rs, con directorio del mismo nombre, my_mod, que incluye submódulos: my_submod_uno.rs, my_submod_dos.rs

Es posible definir la visibilidad pública de un submódulo mediante `pub(in <path>)`

```rust
mod plant_structures {
    pub mod roots {
        pub mod products {
            pub(in crate::plant_structures::roots) struct Cytokinin {
                ...
            }
        }

        use products::Cytokinin; // ok: in `roots` module
    }

    use roots::products::Cytokinin; // error: `Cytokinin` is private
}

// error: `Cytokinin` is private
use plant_structures::roots::products::Cytokinin;
```

Se puede usar `as` para un alias local
```rust
use std::io::Result as IOResult;
```

Submódulos pueden invocar `super` o `crate` para importar las funcionalidades de otro submódulo
```rust
// proteins/mod.rs
pub enum AminoAcid { ... }
pub mod synthesis;

// proteins/synthesis.rs
use super::AminoAcid;  // explicitly import from parent

// proteins/synthesis.rs
use crate::proteins::AminoAcid;  // explicitly import relative to crate root
```

Submódulos pueden acceder elementos privados del módulo con `use super::*;`

`std::prelude::v1` es siempre importado automáticamente. Es donde Vec y Result residen. [Ver](https://doc.rust-lang.org/std/prelude/v1/)


```rust
pub const ROOM_TEMPERATURE: f64 = 20.0;  // degrees Celsius
pub static ROOM_TEMPERATURE: f64 = 68.0;  // degrees Fahrenheit
```
`const` es replicado en el código cada vez que se usa. `static` es cargado al inicio y vive hasta que el programa se cierra.

### Once

Es posible alojar una librería `lib.rs` y un ejecutable que usa dicha librería en el directorio `src/bin` del proyecto.

La definición en Cargo.toml juega un papel importante
```toml
[package]
name = "once"
...
```
El ejecutable se define como
```rust
// growing.rs
use once::Module::...
```
Para usar se compila y luego se ejecuta ```
; cargo build
; cargo run --bin growing
```

Cuando la librería crece lo suficiente es mejor almacenarla en su propio crate e importarlo
```
[dependencies]
fern_sim = { path = "../fern_sim" }
```
## Attributes
Algunos ejemplos
```rust
#[allow(non_camel_case_types)]
pub struct git_revspec {
    ...
}

// Only include this module in the project if we're building for Android.
// Lista completa https://doc.rust-lang.org/reference/conditional-compilation.html
#[cfg(target_os = "android")]
mod mobile;

// https://matklad.github.io/2021/07/09/inline-in-rust.html
/// Adjust levels of ions etc. in two adjacent cells
/// due to osmosis between them.
#[inline]
fn do_osmosis(c1: &mut Cell, c2: &mut Cell) {
    ...
}

// To whole file
// libgit2_sys/lib.rs
#![allow(non_camel_case_types)]

pub struct git_revspec {
    ...
}

pub struct git_error {
    ...
}
```
`#!` le indica al compilador que el atributo debe ser aplicado a todo el elemento (el archivo en este caso).

`#![feature(...)]` Es usado para probar `features` inestables.

## Tests y documentación
```rust
#[test]
#[allow(unconditional_panic, unused_must_use)]
#[should_panic(expected="divide by zero")]
fn test...() { }
```

Se puede usar `Result<T, Err>` para los tests

```rust
use std::num::ParseIntError;

/// This test will pass if "1024" is a valid number, which it is.
#[test]
fn explicit_radix() -> Result<(), ParseIntError> {
  i32::from_str_radix("1024", 10)?;
  Ok(())
}
```

```rust
#[cfg(test)]   // include this module only when testing
mod tests {
    fn roughly_equal(a: f64, b: f64) -> bool {
        (a - b).abs() < 1e-6
    }

    #[test]
    fn trig_works() {
        use std::f64::consts::PI;
        assert!(roughly_equal(PI.sin(), 0.0));
    }
}
```


## Diez

El operador `?` eleva el error hacia la función externa que lo invocó. Los errores arrojados dentro de una función pueden ser de varios tipos, creando en ocasiones error de parseo. Por ejemplo
```rust
use std::io::{self, BufRead};

/// Read integers from a text file.
/// The file should have one number on each line.
fn read_numbers(file: &mut dyn BufRead) -> Result<Vec<i64>, io::Error> {
    let mut numbers = vec![];
    for line_result in file.lines() {
        let line = line_result?;         // reading lines can fail
        numbers.push(line.parse()?);     // parsing integers can fail
    }
    Ok(numbers)
}
```
```
error: `?` couldn't convert the error to `std::io::Error`

  numbers.push(line.parse()?);     // parsing integers can fail
                           ^
            the trait `std::convert::From<std::num::ParseIntError>`
            is not implemented for `std::io::Error`

note: the question mark operation (`?`) implicitly performs a conversion
on the error value using the `From` trait
```

Para poder utilizar esta función se requiere envolver los errores. Una forma de hacerlo es mediante un error genérico definido como
```rust
type GenericError = Box<dyn std::error::Error + Send + Sync + 'static>; // Pasar entre hilos y vivir durante todo el programa
type GenericResult<T> = Result<T, GenericError>;
```
### Anyhow

Con el crate [anyhow](https://crates.io/crates/anyhow) se pueden derivar errores sin tener que envolverlos en un tipo genérico como anteriormente.

```rust
use anyhow::Result;

fn read_integers(file: &mut dyn BufRead) -> Result<Vec<i64>> {
  ...
}

fn main() -> Result<()> {
  ...
}
```

### Thiserror

El crate [thiserror](https://crates.io/crates/thiserror) permite definir `enums` y `structs` con los cuales derivar std::error:Error de forma sencilla.

```rust
use thiserror::Error;

#[derive(Debug, Error)]
enum ParserErrors {
    #[error("Error Reading File")]
    IoError(#[from] std::io::Error),
    #[error("Error Parsing")]
    ParserError(#[from] std::num::ParseIntError)
}
```
Los elementos del `enum` reflejan los tipos de errores que se pueden encontrar en las funciones que envuelven.

```rust
fn read_integers(file: &mut dyn BufRead) ->Result<Vec<i64>, ParserErrors> { ... }
fn main() -> Result<(), ParserErrors> { ... }
```


## Negación
Rust uses ! instead of ~ for bitwise NOT:
```rust
let hi: u8 = 0xe0;
let lo = !hi;  // 0x1f
```
This means that !n can’t be used on an integer n to mean “n is zero.” For that, write n == 0

## Labels y loops
A loop can be labeled with a lifetime. In the following example, 'search: is a label for the outer for loop. Thus, break 'search exits that loop, not the 
inner loop:

```rust
'search:
for room in apartment {
    for spot in room.hiding_spots() {
        if spot.contains(keys) {
            println!("Your keys are {} in the {}.", spot, room);
            break 'search;
        }
    }
}
```

A break can have both a label and a value expression:

```rust
// Find the square root of the first perfect square
// in the series.
let sqrt = 'outer: loop {
    let n = next_number();
    for i in 1.. {
        let square = i * i;
        if square == n {
            // Found a square root.
            break 'outer i;
        }
        if square > n {
            // `n` isn't a perfect square, try the next
            break;
        }
    }
};
```
Labels can also be used with continue

## Nueve
🚀 WASM

El proyecto se inicializa como librería con dependencias a `wasm-bindgen`. También hay que especificar que es una "cdylib".
```toml
[lib]
crate-type = ["cdylib"]

[dependencies]
wasm-bindgen = "0.2.80"
```

En el lib.rs cargamos el preludio y cada función se marca con la macro `#[wasm_bindgen]`.

Las funciones de JS se marcan como externas
```rust
#[wasm_bindgen]
extern {
    fn alert(s: &str);
}
```
Para luego ser utilizadas de la forma en la que se espera
```rust
#[wasm_bindgen]
pub fn greet() {
    alert("Hello, world!");
}
```

Para compilar a WASM se require la utilidad [wasm-pack](https://rustwasm.github.io/wasm-pack/installer/). Posteriormente se ejecuta `wasm-pack build` en el directorio del proyecto.

Para enlazar con una página web se utiliza defacto [create-wasm-app](https://github.com/rustwasm/create-wasm-app) con `npm init wasm-app <target_dir>`. Esto genera un proyecto en node con webpack que sólo necesita ser modificado en las dependencias para enlazar correctamente al proyecto en wasm que se ha generado.

```json
"dependencies": {
  "nueve": "file:../pkg"
},
```

Las estructuras que van a dialogar con el navegador también están rodeadas por `#[wasm_bindgen]`. La representación de datos no puede ser otra que valores escalares (u8, i32, f64, etc). Si se intenta retornar un dato no soportado se obtiene el error `the trait `IntoWasmAbi` is not implemented for...`.

Aunque [es posible serializarlo](https://rustwasm.github.io/wasm-bindgen/reference/arbitrary-data-with-serde.html) el diseño de una interfaz entre WASM y JS debe buscar optimizar:
1. Minimizar la copia hacia y fuera de la memoria linear de WASM.
2. Minimizar serialización y deserialización.

De lo contrario provoca costos extras en el proceso.

👍 _Una buena interfaz JS ↔ WASM es a menudo una en donde grandes y longevas estructuras de datos son implementadas como tipos de datos en Rust que viven en la memoria linea de WASM y son expuestas a JS como manejadores opacos_. JS invoca funciones exportadas por WASM que toman estos manejadores opacos, transforman sus datos, realizan cómputos pesados, consultan los datos y finalmente retornan un resultado pequeño y copiable. Retornar un resultado pequeño del cómputo evita serializar o deserializar entre el GC heap de JS y la memoria linear de WASM.

## Ocho
El crate `termion` https://crates.io/crates/termion es útil para operar con la terminal.

## Siete

Es mejor usar una `struct` y no un `type`. Una `struct` puede proveer funciones propias y sobrecargas.

Sobrecargar `std::fmt::Display`
```rust
  impl fmt::Display for Celsius {
        fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
            write!(f, "{} °C", self.0)
        }
    }
```

`main.rs` y `lib.rs` representan límites distintos dentro del `package`. Sólo puede existir un `mod ...` en todos los límites.

```rust
// lib.rs
pub mod convertor;
pub mod server;

// main.rs

use siete::server::{get_celsius, get_farenheit};
```

Lo mejor sería optar por tener módulos internos con sus dependencias claras https://doc.rust-lang.org/cargo/reference/specifying-dependencies.html

## Seis

Siguiendo https://www.mongodb.com/developer/quickstart/rust-crud-tutorial/

Para requerir variables de entorno
```rust
use std::env;

env::var("MONGODB_URI").expect("You must set the MONGODB_URI env var!");
```

Para realizar las operaciones con Mongo se usa la macro `bson::doc!`.

Para hacer la transformación de una `struct` se usa `serde`.
```rust
#[derive(Debug, Deserialize, Serialize)]
struct Movie {
    #[serde(rename = "_id,", skip_serializing_if = "Option::is_none")]
    id: Option<ObjectId>,
    title: String,
    year: u8,
    plot: String,
    #[serde(with = "bson::serde_helpers::chrono_datetime_as_bson_datetime")]
    released: DateTime<Utc>,
}
```

El campo `id` es convertido a `_id` pero si es `None` no es convertido y se omite del documento.

## Cinco

[Tide](https://docs.rs/tide/latest/tide/) es un web framework para Rust. Basado [async-std](https://async.rs/).

Para transmitir JSON se usa [serde](https://crates.io/crates/serde) y [serde-json](https://crates.io/crates/serde_json).

Declaración principal

```rust
#[async_std::main]
async fn main() -> tide::Result<()> {
    let mut app = tide::new();

    app.at("/albums").get(get_albums);
    app.listen("127.0.0.1:8080").await?;

    Ok(())
}

async fn get_albums(_req: Request<()>) -> Result<serde_json::Value, tide::Error> {
  ...
}
```
---
Tide no es a mi parecer la mejor opción: https://twitter.com/raybachas/status/1513222482421071884

---

[Actix-Web](https://actix.rs/) es un web framework que usa Tokio y tiene más actividad y uso en producción.

Declaración principal
```rust
use actix_web::{get, web, App, HttpServer, Responder};

#[actix_web::main]
async fn main() -> std::io::Result<()>{
    HttpServer::new(|| {
        App::new()
        .service(get_albums)
    })
    .bind(("127.0.0.1", 8080))?
    .run()
    .await
}

#[get("/albums")]
async fn get_albums() -> impl Responder {
  ...
}
```

Para retornar un código hay que importar `HttpResponse` y `HttpResponseBuilder`. La función debe retornar `HttpResponseBuilder`.
```rust
#[post("/albums")]
async fn post_album(data: web::Data<AppState>, body: String) -> HttpResponseBuilder {
  HttpResponse::Ok()
}
```

Para manejar estado interno hay que envolverlo en estructuras con `Mutex` ya que actix-web lanza un nuevo hilo con cada petición que llega.

Esta estructura debe ser envuelta una vez más con `web::Data` y pasarla a la aplicación con `app_data()`.

Cada función la recibe con la mimsma estructura genérica `web::Data<T>`.

```rust
#[derive(Debug)]
struct AppState {
    albums: Mutex<Vec<Album>>,
}

fn main() {
  let app_state = web::Data::new(AppState {...});
  ...
    App::new()
            .app_data(app_state.clone())
  ...
}

async fn get_albums(data: web::Data<AppState>) -> impl Responder {
    let albums = &data.albums;
    ...
}

#[post("/albums")]
async fn post_album(data: web::Data<AppState>, body: String) -> HttpResponseBuilder {
    let mut albums = data.albums.lock().unwrap();
    ...
}
```

Es posible mantener enviar un JSON junto con un status code si se invoca la respuesta como `web::Json(json!("not found")).customize().with_status(StatusCode::NOT_FOUND)`

```rust
#[get("/albums/{id}")]
async fn get_album(data: web::Data<AppState>, path: web::Path<String>) -> impl Responder {
    let albums = data.albums.lock().unwrap();
    let id = path.into_inner();
    println!("Received {}", id);
    for album in albums.iter() {
        if album.id == id {
            return web::Json(json!(album)).customize().with_status(StatusCode::OK);
        }
    }

    web::Json(json!("not found")).customize().with_status(StatusCode::NOT_FOUND)
}
```
## Cuatro

Para manipular imágenes se puede usar el crate [image](https://docs.rs/image/0.23.3/image/).

Ejemplos
```rust
// GenericImageView es un trait que debe ser cargado para poder inspeccionar una imagen.
use image::{ GenericImageView, ImageError };

fn main() -> Result<(), ImageError> {
  let image = image::open(path)?;
  Ok(())
}

```

Separar módulos se logra creando archivos .rs que van a contener los módulos.

Ejemplo
```rust
// src/generate.rs

pub mod images {
  pub fn single_pixel() {
    ...
  }
}
```

Después se importan en el archivo que los va a utilizar como
```rust
mod generate;

pub use crate::generate::images;

fn main() {
...
  images::single_pixel();
}
```

Para operar con un `path` se puede usar `std::path::Path`. Ejemplo
```rust
use std::path::Path;

fn main() {
  let path = Path::new("/home/r/file.png");
  // la extensión -> Option(&OsStr)
  path.extension();
  // El nombre (sin extensión) -> Option(&OsStr)
  path.file_stem();
}
```

`U8` tiene opciones para ciclar el valor y evitar desbordar
```rust
let n: u8 = 250;

// -> 25
n.wrapping_add(30);

// -> 250
n.wrapping_sub(265)
```

También para añadir y restar topando en `u8::MAX` / `u8::MIN`
```rust
let n: u8 = 250;

// 255
n.saturating_add(100);

// 0
n.saturating_sub(300);
```

Destructurar un array se logra
```rust
// este ejemplo es breve para enfocar, ver el código de images::apply_filter() para la referencia correcta
let [red, green, yellow, alpha] = *pixel;
```
## Tres

Para operar archivos se usa la _struct_ `std::fs::File`.

Para manipular el contenido se carga el preludio `std::io::prelude::*`.

Para leer línea por línea de un archivo
```rust
use std::fs::File;
use std::io::BufReader;
...
let file = File::open(file_path);
let buffer = BufReader::new(file);

for line in buffer.lines() {
  ...
}
...
```

Para convertir de `&[&str]` a `Vec<String>`:
```rust
let v = refs.iter().map(|a| String::from(*a)).collect();
```

Recordar derivar PartialEq para poder comparar valores de definiciones propias que están encapsuladas
```rust
#[derive(PartialEq)]
enum Operation {
  Add,
  Mix,
}
...
            let operation: Option<Operation> = match op {
                "add" => Some(Operation::Add),
                "mix" => Some(Operation::Mix),
                _ => None,
            };

            if operation != None {
                return Some(Instruction::new(operation.unwrap(), &segments[1..]));
            } else {
                return None;
            }
```
Para obtener una conversión on un valor por default para un `&str`
```rust
usize::from_str(&x).ok().unwrap_or_default()
```

Para acceder a un `char` en una posición `i` de un `String`
```rust
let c = my_string.chars().nth(i).unwrap();
```

Escribir a archivos también tiene su macro:
```rust
let mut file = File::create("output.txt")?;

// escribe una línea
writeln!(file, "{}", content);

// escribe sin salto de línea
write!(file, "{}", content);
```
La macro es muy conveniente para `String`.


Un `char` en unicode ocupa 2 bytes. Hay que tener cuidado con su manipulación para no desbordar. Ejemplo
```rust
let mx = "méxico";
mx.len() == 7;
mx.chars().count() == 6;

// esto desborda
mx.chars().nth(6);
```
## Dos
Para hacer un `test` que tenga `panic!()`
```rust
#[test]
#[should_panic]
fn test_that_should_panic() {
  ...
}
```

También se puede convertir de `&str` a `usize` con
```rust
let a: &str = "a";
a.parse::<usize>().expect("Invalid");
```

## Uno
Para leer argumentos de la línea de comandos

```rust
use std::env;
env::args();
```

Para salir del programa
```rust
std::process::exit(n);
```

Para convertir argumentos en `str` hacia `usize`
```rust
use std::str::FromStr;

let a: usize = 1;
usize::from_str(&a).expect("Cannot convert");
```

# Cien días de código en Rust 
# 💯🦀

Los nombres de los proyectos no reflejan los días. Sólo siguen su propia secuencia.

## Nueve
🚀 WASM

El proyecto se inicializa como librería con dependencias a `wasm-bindgen`. En el lib.rs cargamos el preludio y cada función se marca con la macro `#[wasm_bindgen]`.

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

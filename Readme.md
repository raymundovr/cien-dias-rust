# Cien días de código en Rust 
# 💯🦀

Los nombres de los proyectos no reflejan los días. Sólo siguen su propia secuencia.

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
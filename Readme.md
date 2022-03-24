# Cien días de código en Rust 
# 💯🦀

## Uno
Para leer argumentos de la línea de comandos

```
use std::env;
env::args();
```

Para salir del programa
```
std::process::exit(n);
```

Para convertir argumentos en `str` hacia `usize`
```
use std::str::FromStr;

let a: usize = 1;
usize::from_str(&a).expect("Cannot convert");
```

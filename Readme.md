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
## Dos
Para hacer un `test` que tenga `panic!()`
```
#[test]
#[should_panic]
fn test_that_should_panic() {
  ...
}
```

También se puede convertir de `&str` a `usize` con
```
let a: &str = "a";
a.parse::<usize>().expect("Invalid");
```


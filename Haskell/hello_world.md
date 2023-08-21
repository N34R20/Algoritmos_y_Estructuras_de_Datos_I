# Hello World

```haskell
main :: IO ()
main = putStrLn "Hello, world!"
```

Puedes guardar este código en un archivo con extensión `.hs`, por ejemplo, "hello.hs". Luego, para compilar y ejecutar el programa, sigue estos pasos:

1. Abre una terminal y navega hasta la ubicación del archivo "hello.hs".
2. Compila el programa utilizando el comando `ghc` (Glasgow Haskell Compiler):

   ```bash
   ghc -o hello hello.hs
   ```

   Esto generará un archivo ejecutable llamado "hello".
   
3. Ejecuta el programa:

   ```bash
   ./hello
   ```

Deberías ver la salida "Hello, world!" en la consola. Este es un ejemplo simple, pero te ayudará a comprender cómo funciona la estructura básica de un programa Haskell.
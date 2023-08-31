# Programacion Funcional

## Polimorfismo 
no depende de las operaciones del tipo
- funcion que puede aplicarse a distintos tipos de datos 
- se usa cuando el comportamiento de la funcion no depende parametricamente del tipo de sus argumentos 
- lo vimos en el lenguaje de especificacion con las funcion genericas
- En Haskell los poliformismo se escriben usando **variables de tipo** y conviven con el tipado fuerte
- Ejemplo de una funcion polimorfica: la funcion identidad.


## Variables de tipos 

Que tipo tienen las siguientes funciones?
 identidad x = x
 primero x y = x
 segundo x y = y 
 constante5 x y z = 5

**variables de tipo**
- son parametros que se escriben en la signatura usando variables minusculas
- En lugar de valores, denotan tipos
- Cuando se invoca la funcion se usa como argumento el tipo del valor

## Clases de tipos 

**clases de tipos**
- Conjunto de tipos a los que se le pueden aplicar ciertas funciones
- Un tipo puede pertenecer a distintas clases
    Los Float son numeros (Num), con oredn (Ord), de punto flotante (Floating), etc.

### **Conjunto de tipos de datos** a los que se les puede aplicar un **conjunto de funciones**

### Algunas clases:
1. Integral := ({Int, Integrer, o..}, {mod, div, o..}) 
2. Fractional := ({Float, Double, o..}, {(/), o..})
3. Floating := ({Float, Double, o..}, {sqrt, sin, cos, tan, o..})
4. Num := ({Int, Integer, Float, Double, o..}, {(+), (*), abs, o..})
5. Ord := ({Bool, Int, Integer, Float, Double, o..}, {(<), compare})
6. Eq := ({Bool, Int, Integer, Float, Double, o..}, {(==), (/=)})

## Tuplas 
Dados tipos A1,...,Ak, el tipo k-upla (A1,...,Ak) es el conjunto de las k-uplas (v1,..,vk) donde v1 es de tipo A1

(1, 2)              :: (Int, Int)
(1.1, 3.2, 5.0)     :: (Float, Float, Float)
(True, (1, 2))      :: (Bool, (Int, Int))
(True, 1, 2)        :: (Bool, Int, Int)

- En Haskell hay infinitos tipos de tuplas 

Funciones de acceso a los valores de un par en Prelude

- fst :: (a, b) -> a
- snd :: (a, b) -> b



## Currificacion 

- Diferencia entre promedio1 y promedio2
    - promedio1 :: (Float, Float) -> Float
      promedio1 (x,y) = (x+y)/2
    
    - promedio2 :: Float -> Float -> Float
      promedio2 x y = (x+y)/2

- solo cambia el tipo de datos de la funcion
    - promedio1 recibe un solo parametro (una dupla)

    - promedio2 recibe dos Floats separados

    - para declarla, separamos los tipos de los parametros con una flecha

    - tiene motivos teoricos y practicos (que no vemos ahora)

- la notacion se llama **currificacion** en honor al matematico Haskell B. Curry

- para nosotros, alcanza con ver que evita el uso de varios signos de puntuacion (comas y parentesis)

## Funciones binarias: notacion prefija vs. infija

## Recursion

Hasta ahora, especificamos funciones que consistian en "expresiones sencillas"
Como es una funcion en Haskell para calcular el factorial de un numero n &#8712; N?

$$
n! = \prod_{k=1}^n k 
$$

$$
\begin{equation}
n! =
\begin{cases}
    1 & \text{si } n = 0 \\
    n(n-1)! & \text{si } n > 0
\end{cases}
\end{equation}
$$

```haskell
factorial :: Int -> Int
factorial n 
    | n == 0 = 1
    | n > 0 = n * factorial(n - 1) 
```

## Recursion y reduccion

Podemos definirla usando otherwise?

```haskell
factorial :: Int -> Int
factorial n 
    | n == 0 = 1
    | otherwise = n * factorial(n - 1) 
```
Podemos definirla usando pattern matching?
```haskell
factorial :: Int -> Int
factorial n 
factorial 0 = 1
factorial = n * factorial(n - 1) 
```

Como reduce la expresion factorial 3?

factorial 3 -> 3 * factorial 2 -> 3 * 2 * factorial 1 -> 6 * factorial 1 -> 6 * 1 factorial 0 -> 6 * factorial 0 -> 6 * 1 -> 6 

### Asegurarse de llegar a un caso base

## Como pensar recursivamente?

Si queremos defenir una funcion recursiva, por ejemplo factorial,
    -   en el paso recursivo, **suponiendo** que tenemos el resultado para el caso anterior, que falta para poder obtener el resultado que quiero?
    En este caso, suponemos ya calculado factorial (n - 1) y lo combinamos multiplicandolo por n para lograr obtener factorial n
    - ademas, identificamos el o los **casos base**. En el ejemplo de factorial, definimos como casos base la funcion sobre 0:
    factorial n | n == 0 = 1

Propiedades de una definicion recursiva 
- las **llamadas recursivas** tienen que "acercarse" a un caso base
- tiene que tener uno o mas **casos base** que dependeran del tipo de llamado recursivo. Un caso base, es aquella expresion que no tiene paso recursivo

### Casos base
- identificar el o los casos
- Casos recursivos: suponiendo que la llamada recursiva es correcta, que tengo que hacer para completar la solucion?
-
- Si podemos dar una solucion correcta en base a una llamada recursiva correcta entonces, por induccion. Todos van a ser correctos!


## Induccion vs Recursion


## Generalizacion de funciones
**Pregunta clave** alcnaza con hacer recursion sobre n?

No hay niguna relacion sencilla entre sumarDivisores n y sumaDivisores (n-k) (para nigun k particular)

## Recursion en mas de un parametro

implementar la siguiente funcion:

$$
f(n,m) = \sum_{i=1}^n \sum_{j=1}^m i^j 
$$

Veamos primero la especificacion:

```
problema sumatoriaDoble(n:Z, m:Z): Z{
    requiere: {(n > 0) ^ (m > 0)}
    asegura: {res = f(n,m) = \sum_{i=1}^n \sum_{j=1}^m i^j }
}
```

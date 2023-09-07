-- ghci

doubleMe :: Num a => a -> a 
doubleMe x = x + x

-- Ejercicio 1
f :: Int -> Int
f 1 = 8
f 4 = 131
f 16 = 16

g :: Int -> Int
g x | x == 8 = 16
    | x == 16 = 4
    | x == 131 = 1

l :: Int -> Int
l x = f (g x) 

m :: Int -> Int
m x = g (f x) 

-- Ejercicio 2

absoluto :: Int -> Int
absoluto x | x > 0 = x
           | x < 0 = -(x) 
           | x == 0 = 0

maximoabsoluto :: (Int, Int) -> Int
maximoabsoluto (x, y) | (absoluto x) > (absoluto y) = (absoluto x) 
                      | (absoluto y) > (absoluto x) = (absoluto y) 

maximo3 :: Int -> Int -> Int -> Int
maximo3 x y z | (x >= y) && (x >= z) = x
              | (y >= x) && (y >= z) = y
              | (z >= x) && (z >= y) = z

algunoEs0 :: Float -> Float -> Bool
algunoEs0 x y | (x == 0) || (y == 0) = True
              | otherwise = False

ambosSon0 :: Float -> Float -> Bool
ambosSon0 x y | (x == 0) && (y == 0) = True
              | otherwise = False

mismoIntervalo :: Float -> Float -> Bool
mismoIntervalo x y | (x <= 3) && (y <= 3) = True
                   | (3 < x && x <= 7) && (3 < y && y <= 7) = True
                   | (x > 7) && (y > 7) = True
                   | otherwise = False



sumaDistintos :: Int -> Int -> Int -> Int
sumaDistintos x y z | x == y = x + z
                    | x == z = x + y
                    | y == z = x + y
                    | (x == y) && (x == z) = x
                    | otherwise = x + y + z


esMultiploDe :: Int -> Int -> Bool
esMultiploDe x y | mod x y == 0 = True
                 | otherwise = False

digitoUnidades :: Int -> Int
digitoUnidades x = mod x 10

digitoDecenas2 :: Int -> Int
digitoDecenas2 x | x < 10 = 0
                 |otherwise = digitoUnidades(div x 10) 

digitoDecenas :: Int -> Int
digitoDecenas x | x < 10 = 0
                | mod x 100 < 10 = 0
                | otherwise = ((mod x 100) - (digitoUnidades x)) `div` 10 

-- Ejercicio 3
estanRelacionados :: Int -> Int -> Bool
estanRelacionados x y | (x * x) + ((x * y) * (-(x)`div`(y))) == 0 = True
                      | otherwise = False

-- Ejercicio 4

prodInt :: (Float, Float) -> (Float, Float) -> Float
prodInt (x,y) (z,w) = (x*z) + (y*w)

todoMenor :: (Float, Float) -> (Float, Float) -> Bool
todoMenor (x,y) (z,w) | (x < z) && (y < w) = True
                      | otherwise = False

distanciaPuntos :: (Float, Float) -> (Float, Float) -> Float
distanciaPuntos (x,y) (z,w) = sqrt((x-z)**2 + (y-w)**2)

sumaTerna :: (Int, Int, Int) -> Int
sumaTerna (x, y, z) = x + y + z

esMultiplo :: Integer -> Integer -> Integer
esMultiplo x a | mod x a == 0 = x
               | otherwise = 0

sumarSoloMultiplos :: (Integer, Integer, Integer) -> Integer -> Integer 
sumarSoloMultiplos (x,y,z) a = (esMultiplo x a) + (esMultiplo y a) + (esMultiplo z a) 


porPrimerPar :: (Int, Int, Int) -> Int
porPrimerPar (x,y,z) | esMultiploDe x 2 == True = 0
                     | esMultiploDe y 2 == True = 1
                     | esMultiploDe z 2 == True = 2
                     | otherwise = 4


-- Ejercicio 5
--{ Implementar la funcion todosMenores :: (Integer, Integer, Integer)} --
todosMenores :: (Integer, Integer, Integer) -> Bool
todosMenores (n1, n2, n3) | (h(n1) > k(n1)) && (h(n2) > k(n2)) && (h(n3) > k(n3)) = True
                          | otherwise = False

h :: Integer -> Integer
h n | n <= 7 = n ^ 2
    | n > 7 = 2 * n - 1


k :: Integer -> Integer
k n | mod n 2 == 0 = div n 2
    | otherwise = 3 * n + 1 

-- Ejercicio 6
-- Programar una funcion bisiesto :: Integer --> Bool

-- (problema bisiesto (año:Z): Bool {
--    requiere: {True}
--    asegura: {res=false <-> año no es multiplo de 4 o es multipo de 100 pero no de 400}
-- }

bisiesto :: Integer -> Bool
bisiesto x | (mod x 4 /= 0) = False
           | ((mod x 100 == 0) && (mod x 400 /= 0)) = False
           | otherwise = True 

-- Ejercicio 7 Implementar una funcion:
-- distanciaManhattan:: (Float, Float, Float) ->(Float, Float, Float) ->Float

distanciaManhattan :: (Float, Float, Float) -> (Float, Float, Float) -> Float
distanciaManhattan (x,y,z) (a,b,c) = absoluto(x - a) + absoluto(y - b) + absoluto(z - c)

-- Ejercicio 8. Implementar una funci´on comparar :: Integer ->Integer ->Integer

digitoUnidades :: Integer -> Integer
digitoUnidades x = mod x 10

digitoDecenas2 :: Integer -> Integer
digitoDecenas2 x | x < 10 = 0
                 |otherwise = digitoUnidades(div x 10) 

sumarUltimoDosDigitos :: Integer -> Integer
sumarUltimoDosDigitos x = digitoUnidades x + digitoDecenas2 x 

comparar :: Integer -> Integer -> Integer
comparar x y | sumarUltimoDosDigitos x < sumarUltimoDosDigitos y = 1
             | sumarUltimoDosDigitos x > sumarUltimoDosDigitos y = -1
             | sumarUltimoDosDigitos x == sumarUltimoDosDigitos y = 0

-- Ejercicio 9. A partir de las siguientes implementaciones en Haskell, describir en lenguaje natural qu´e hacen y especificarlas
-- semiformalmente.

-- a) evaluaEnCero

-- b) devuelvo15

-- c) itervalo9a3

-- d) promedio

-- e) promedio2

-- f) enteroMasCercanoA
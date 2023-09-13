absoluto :: Float -> Float
absoluto x | x > 0 = x
           | x < 0 = -(x) 
           | x == 0 = 0

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



--4)
esMultiplo :: Integer -> Integer -> Integer
esMultiplo x a | mod x a == 0 = x
               | otherwise = 0

sumarSoloMultiplos :: (Integer, Integer, Integer) -> Integer -> Integer 
sumarSoloMultiplos (x,y,z) a = (esMultiplo x a) + (esMultiplo y a) + (esMultiplo z a) 

-- Ejercicio 9. A partir de las siguientes implementaciones en Haskell, describir en lenguaje natural qu´e hacen y especificarlas
-- semiformalmente.

-- a) evaluaEnCero

-- b) devuelvo15

-- c) itervalo9a3

-- d) promedio

-- e) promedio2

-- f) enteroMasCercanoA
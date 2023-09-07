-- Ejercicio 1. Implementar la funci´on fibonacci:: Integer ->Integer que devuelve el i-´esimo n´umero de Fibonacci

fibonacci :: Integer -> Integer
fibonacci n | n == 0 = 0
            | n == 1 = 1
            | otherwise = fibonacci(n - 1) + fibonacci(n - 2)

-- Ejercicio 2

parteEntera :: Float -> Integer
parteEntera x | x >= 0 && x < 1 = 0
              | x < 0 && x >= -1 = -1
              | x >= 1 = 1 + parteEntera(x-1)
              | otherwise = parteEntera(x+1)

-- Ejercicio 3
esDivisible :: Integer -> Integer -> Bool
esDivisible x y | x == y = True 
                | x < y = False
                | otherwise = esDivisible (x - y) y 

-- Ejercicio 4
sumaImparesCalve :: Integer -> Integer
sumaImparesCalve n | n == 0 = 0 
              | n == 1 = 1 
              | n > 1 = n * n 

sumaImpares2 :: Integer -> Integer
sumaImpares2 n | n == 0 = 0 
               | n == 1 = 1 
               | n > 1 = sumaImpares2(n - 1) + n*2 - 1

-- Ejercicio 5 
medioFact :: Integer -> Integer 
medioFact n | n == 0 = 1
            | n == 1 = 1
            | otherwise = medioFact (n - 2) * n 

-- Ejercicio 6
sumaDigitos :: Integer -> Integer
sumaDigitos n | n < 10 = n 
              | otherwise = mod n 10 + sumaDigitos(div n 10)

-- Ejercicio 7
todosDigitosIguales :: Integer -> Bool
todosDigitosIguales n | n < 10 = True
                      | mod n 10 /= mod (div n 10) 10 = False 
                      | otherwise = todosDigitosIguales(mod (div n 10) 10)

-- Ejercicio 8
cantDigitos :: Integer -> Integer
cantDigitos n | n < 10 = 1
              | otherwise = 1 + cantDigitos(div n 10)


iesimoDigitoSinRecursion :: Integer -> Integer -> Integer
iesimoDigitoSinRecursion n i | i > cantDigitos n = 0 
                             | otherwise = mod (div n (10**(i-1))) 10
                
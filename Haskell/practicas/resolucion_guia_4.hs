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
                             | otherwise = mod (div n (10^(i-1))) 10

-- Ejercicio 9
-- Especiﬁcar e implementar una funcion esCapicua :: Integer ->Bool que dado n ∈ N≥0 determina si n es
-- un numero capicua

-- requiere {neN>=0}
-- esCapicua :: Integer -> Bool 
-- esCapicua n | n < 10 = True
--            | otherwise = esCapicua(div n 10**cantDigitos n - 1 == mod n 10) = True

-- Ejercicio 10
--a) 
f1 :: Int -> Int
f1 n | n == 0 = 1
         | otherwise = 2^n + f1(n-1)

--b)
f2 :: (Int, Float) -> Float
f2 (n,q)| n == 0 = 1
            | otherwise = q^n + f2(n-1, q)

--c)
f3 :: (Int, Float) -> Float
f3 (n,q)| n == 0 = 1
        | otherwise = q^(2*n) + f2((2*n)-1, q) 

--d)
f4 :: (Int, Float) -> Float
f4 (n,q)| n == n = q^n
        | otherwise = q^(2*n) + f2((2*n)-1, q) 
-- se puede hacer recursion a la vez?

-- Ejercicio 11
-- a) 

factorial :: Integer -> Integer
factorial n | n == 0 = 1
            | otherwise = n * factorial(n-1)

eAprox :: Integer -> Float
eAprox n | n == 0 = 1.0
-- | n == 1 = 1.0
         | otherwise = 1/fromIntegral((factorial n)) + eAprox (n-1)


-- Ejercicio 12
sucesion2 :: Int -> Float
sucesion2 n | n == 1 = 2
            | otherwise = 2 + (1/(sucesion2(n-1))) 

raizDe2Aprox :: Int -> Float
raizDe2Aprox n = sucesion2 n - 1  


-- Ejercicio 13
sumatoriaInterna :: Int -> Int -> Int
sumatoriaInterna _ 0 = 0 
sumatoriaInterna n m = n^m + sumatoriaInterna n (m-1)

sumatoriaDoble :: Int -> Int -> Int
sumatoriaDoble 0 _ = 0
sumatoriaDoble n m = sumatoriaInterna n m + sumatoriaDoble (n-1) m


-- Ejercicio 14
sumaPotencias :: Integer -> Integer -> Integer -> Integer
sumaPotencias q n 1 = q^(n+1) 
sumaPotencias q 1 m = q^(1+m)
sumaPotencias q n m = q^2 + q^(m+n) + sumaPotencias q (n-1) m + sumaPotencias q n (m-1) 

-- Ejercicio 15

sumaRacionalesInterna :: Integer -> Integer -> Float
sumaRacionalesInterna 0 _ = 0
sumaRacionalesInterna _ 0 = 0
sumaRacionalesInterna p q = fromIntegral (p) / fromIntegral (q) + sumaRacionalesInterna p (q - 1)

sumaRacionalesExterna :: Integer -> Integer -> Float
sumaRacionalesExterna _ 0 = 0
sumaRacionalesExterna 0 _ = 0
sumaRacionalesExterna p q = sumaRacionalesInterna p q + sumaRacionalesExterna (p - 1) q



-- Ejercicio 16
-- a)
buscarDivisor :: Integer -> Integer -> Integer
buscarDivisor n k | k*k > n = n 
                  | mod n k == 0 = k 
                  | otherwise = buscarDivisor n (k+1)

menorDivisor :: Integer -> Integer
menorDivisor n = buscarDivisor n 2

--b)
esPrimo :: Integer -> Bool
esPrimo 1 = True
esPrimo n | menorDivisor n == n = True 
          | otherwise = False

--c)
sonCoprimos :: Integer -> Integer -> Bool
sonCoprimos n m | esPrimo n && esPrimo m = True
                | otherwise = False

--d)
contarPrimos :: Integer -> Integer  
contarPrimos n | n == 1 = 1
               | otherwise = contarPrimos (n-1)  

--nEsimoPrimo :: Integer -> Integer
--nEsimoPrimo n | n == 1 = 1
--              | otherwise = contarPrimos n 1 + nEsimoPrimo (n-1)  

-- ejercicio 17
-- no funca

esFibonacci :: Integer -> Bool
esFibonacci n | n == 1 = True
              | otherwise = False 

-- Ejercicio 18


-- Ejercicio 19


-- Ejercicio 20


-- Ejercicio 21
{-- Ejercicio 1 --} 

-- 1)
longitud :: (Eq t) => [t] -> Integer
longitud [] = 0
longitud s = 1 + longitud(tail s)  

-- 2)
ultimo :: (Eq t) => [t] -> t
ultimo s | longitud s == 1 = head(s) 
         | otherwise = ultimo(tail s) 

-- 3)
principio :: (Eq t) => [t] -> t  
principio s = head(s)  

-- 4)
reverso :: (Eq t) =>[t] -> [t]
reverso [] = []
reverso s = reverso (quitar(head s) s) ++ [head s]

{-- Ejercicio 2 --}

-- 1)
pertenece :: (Eq t) => t -> [t] -> Bool 
pertenece e [] = False
pertenece e (x:xs) = e == x || pertenece e xs 

-- 2) 
todosIguales :: (Eq t) => [t] -> Bool
todosIguales [] = False
todosIguales s | head(s) == head(tail s) = True
               | otherwise = todosIguales (quitar (head s) s)

-- 3) 
todosDistintos :: (Eq t) => [t] -> Bool
todosDistintos [] = True
todosDistintos s = not (pertenece (head s) (tail s)) || todosDistintos(tail s)

-- 4)
hayRepetidos :: (Eq t) => [t] -> Bool 
hayRepetidos [] = False
hayRepetidos s = pertenece (head s) (tail s) || hayRepetidos (tail s)    

-- 5)
quitar :: (Eq t) => t -> [t] -> [t]
quitar _ [] = []
quitar n (x:xs) | n == x = xs  
                | otherwise = x:quitar n xs

-- 6)
quitarTodos :: (Eq t) => t -> [t] -> [t] 
quitarTodos _ [] = []
quitarTodos n (x:xs) | n == x = quitarTodos n xs 
                     | otherwise = x:quitarTodos n (quitar n xs)       

-- 7)
eliminarRepetidos :: (Eq t) => [t] -> [t]
eliminarRepetidos [] = []
eliminarRepetidos (x:xs) = x:eliminarRepetidos (quitarTodos x xs) 


-- 8) 
chequearLongitud :: (Eq t) => [t] -> [t] -> Bool
chequearLongitud [] [] = True
chequearLongitud xs ys | longitud (eliminarRepetidos xs) == longitud (eliminarRepetidos ys) = True 
                       | otherwise = False

mismosElementos :: (Eq t) => [t] -> [t] -> Bool
mismosElementos [] [] = True
mismosElementos (x:xs) (y:ys) = chequearLongitud (x:xs) (y:ys) && mismosElementos xs ys
--mismosElementos (x:xs) (y:ys) = chequearLongitud (quitarTodos x xs) (quitarTodos x ys)  


-- 9)
capicua :: (Eq t) => [t] -> Bool
capicua (x:xs) | reverso (x:xs) == (x:xs) = True
                      | otherwise = False


-- Ejercicio 3

-- 1) 
sumatoria :: [Integer] -> Integer
sumatoria (x:xs) | longitud (x:xs) == 1 = x
                 | otherwise = x + sumatoria xs

-- 2)
productoria :: [Integer] -> Integer
productoria (x:xs) | longitud (x:xs) == 1 = x
                   | otherwise = x * productoria xs

-- 3)
mayor :: Integer -> Integer -> Integer
mayor x y | x >= y = x
          | otherwise = y

maximo :: [Integer] -> Integer
maximo (x:[]) = x 
maximo (x:xs) = mayor x (maximo xs)

menor :: Integer -> Integer -> Integer
menor x y | x <= y = x
          | otherwise = y

minimo :: [Integer] -> Integer
minimo (x:[]) = x 
minimo (x:xs) = menor x (minimo xs)

-- 4)
sumarN :: Integer -> [Integer] -> [Integer] 
sumarN n [] = []
sumarN n (x:xs) = [x+n] ++ sumarN n xs

-- 5) 
primero :: [Integer] -> Integer
primero xs = head(xs)

sumarElPrimero :: [Integer] -> [Integer]
sumarElPrimero [] = []
sumarElPrimero (x:xs) = sumarN x (x:xs)

-- 6) 
sumarElUltimo :: [Integer] -> [Integer]
sumarElUltimo [] = []
sumarElUltimo (x:xs) = sumarN (last xs) (x:xs)

-- 7)
esPar :: Integer -> [Integer]
esPar a | mod a 2 == 0 = [a]
        | otherwise = []

pares :: [Integer] -> [Integer]
pares [] = []
pares (x:xs) = esPar x ++ pares xs 

-- 8)
esMultiplo :: Integer -> Integer -> [Integer]
esMultiplo a n | mod a n == 0 = [a]
               | otherwise = []

multiplosDeN :: Integer -> [Integer] -> [Integer] 
multiplosDeN _ [] = []
multiplosDeN n (x:xs) = esMultiplo x n ++ multiplosDeN n xs

-- 9) 
ordenar1 :: [Integer] -> [Integer]
ordenar1 [] = []
ordenar1 s = ordenar1 (quitar (maximo s) s) ++ [maximo s]

ordenar2 :: [Integer] -> [Integer]
ordenar2 [] = []
ordenar2 s = [minimo s] ++ ordenar2 (quitar (minimo s) s) 


-- Ejercicio 4

-- 1) 
-- sacarBlancosRepetidos :: [Char] -> [Char]
-- sacarBlancosRepetidos [] = []
-- sacarBlancosRepetidos 


-- Ejercicio 5

-- 1)

sumatoriaHastaN :: Integer -> [Integer] -> Integer
sumatoriaHastaN n (x:xs) | longitud (x:xs) == n = x
                         | otherwise = x + sumatoriaHastaN n xs

sumaAcumulada :: [Integer] -> [Integer]
sumaAcumulada [] = [] 
sumaAcumulada s = sumaAcumulada (quitar (ultimo s) s) ++ [sumatoriaHastaN (longitud s) s]



-- 2)
-- buscarDivisor :: Integer -> Integer -> Integer
-- buscarDivisor n k | k*k > n = n 
--                   | mod n k == 0 = k 
--                   | otherwise = buscarDivisor n (k+1)

-- menorDivisor :: Integer -> Integer
-- menorDivisor n = buscarDivisor n 2

-- esPrimo :: Integer -> Bool
-- esPrimo 1 = False
-- esPrimo n = (menorDivisor n) == n


-- primosDivisores :: Integer -> Integer -> [Integer]
-- primosDivisores d n | esPrimo n = [n]
--                     | esPrimo d && mod n d == 0 = d:primosDivisores d div(n d)
--                     | otherwise = primosDivisores (d+1) n 

-- descomponer :: Integer -> [Integer]
-- descomponer n = primosDivisores 2 n 


-- descomponerEnPrimos :: [Integer] -> [[Integer]]
-- descomponerEnPrimos [] = [[]]
-- descomponerEnPrimos (x:xs) = descomponer x ++ descomponerEnPrimos xs

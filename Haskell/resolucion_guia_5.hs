-- Ejercicio 1
-- 1)
longitud :: (Eq t) => [t] -> Integer
longitud [] = 0
longitud s = 1 + longitud(tail s)  

--2)
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

-- Ejercicio 2

-- 1)
pertenece :: (Eq t) => t -> [t] -> Bool 
pertenece e [] = False
pertenece e (x:xs) = e == x || pertenece e xs 

-- 2) 
todosIguales :: (Eq t) => [t] -> Bool
todosIguales [] = False
todosIguales s | head(s) == head(tail s) = True
               | otherwise = todosIguales (quitar (head s) s)

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


-- Ejercicio 3
-- 3)
mayor :: Integer -> Integer -> Integer
mayor x y | x >= y = x
          | otherwise = y

maximo :: [Integer] -> Integer
maximo (x:[]) = x 
maximo (x:xs) = mayor x (maximo xs)


-- 9) 
ordenar :: [Integer] -> [Integer]
ordenar [] = []
ordenar s = ordenar (quitar (maximo s) s) ++ [maximo s]

-- Ejercicio 5

-- 2)
esPrimo :: Integer -> Bool
esPrimo 1 = False
esPrimo n = menorDivisor x == x


primosDivisores :: Integer -> Integer -> [Integer]
primosDivisores d n | esPrimo n = [n]
                    | esPrimo d && mod n d == 0 = d:primosDivisores d div(n d)
                    | otherwise = primosDivisores (d+1) n 

descomponer :: Integer -> [Integer]
descomponer n = primosDivisores 2 n 


descomponerEnPrimos :: [Integer] -> [[Integer]]
descomponerEnPrimos [] = [[]]
descomponerEnPrimos (x:xs) = descomponer x ++ descomponerEnPrimos xs

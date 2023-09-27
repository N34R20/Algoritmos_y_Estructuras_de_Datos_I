module Simulacro where

-- SIMULACRO

-- 1)

-- relaciones validas 
-- no contiene tuplas repetidas
-- y
-- no tiene tuplas con ambas componentes iguales

componentesIguales :: [(String,String)] -> Bool
componentesIguales [] = True
componentesIguales (x:xs) | fst(x) == snd(x) = False
                          | otherwise = componentesIguales(xs)

noHayRepetidas :: [(String,String)] -> Bool
noHayRepetidas [] = True
noHayRepetidas (x:xs) | (fst(x) == fst(head xs)) && (snd(x) == snd(head xs)) = False
                      | otherwise = noHayRepetidas(xs)


relacionesValidas :: [(String,String)] -> Bool
relacionesValidas xs | componentesIguales(xs) && noHayRepetidas(xs) = True
                     | otherwise = False


-- 2)
eliminarRepetidos ::[String] -> [String]
eliminarRepetidos [] = []
eliminarRepetidos (x:xs) | elem x xs = eliminarRepetidos xs
                         | otherwise = x:eliminarRepetidos xs
-- si el primer elemnto esta en la lista segui de largo
-- sino recursivamente agrega el prierm elemento y hace la misma operacion con el resto de la lista

armarListaPersonas :: [(String,String)] -> [String]
armarListaPersonas [] = []
armarListaPersonas (x:xs) = [fst(x)] ++ [snd(x)] ++ armarListaPersonas(xs)
--toma cada tupla de la lista Relaciones y agrega coda nombre a una lista

personas :: [(String,String)] -> [String]
personas [] = []
personas (xs) = eliminarRepetidos (armarListaPersonas xs)
-- sacar los valores repetidos de la lista anterior 

-- 3) 
esAmigo :: String -> (String,String) -> [String]
esAmigo n (p1,p2) | n == p1 = [p2]
                  | n == p2 = [p1]
                  | otherwise = []
-- si la persona esta en altupla me devuelve el otro elemtno
-- de otra forma me devuelve una lista vaica

listaDeAmigos :: String -> [(String,String)] -> [String]
listaDeAmigos _ [] = []
listaDeAmigos n (x:xs) = (esAmigo n x) ++ listaDeAmigos n xs
-- genera una lista de todos los amigos de n 

amigosDe :: String -> [(String,String)] -> [String]
amigosDe _ [] = []
amigosDe n xs = eliminarRepetidos (listaDeAmigos n xs) 


-- 4) 
longitud :: [t] -> Integer
longitud [] = 0
longitud (x:xs) = 1 + longitud xs

cantidadAmigos :: String -> [(String,String)] -> (String,Integer)
cantidadAmigos p xs = (p, longitud(amigosDe p xs))

seqCantidadAmigos :: [String] -> [(String,String)] -> [(String,Integer)]
seqCantidadAmigos (p:[]) xs = [cantidadAmigos p xs] 
seqCantidadAmigos (p:restop) xs = cantidadAmigos p xs : seqCantidadAmigos restop xs 

diccionarioAmigos :: [(String,String)] -> [(String,Integer)]
diccionarioAmigos xs = seqCantidadAmigos (personas xs) xs

compararMasAmigos :: [(String,Integer)] -> String
compararMasAmigos ((p, nAmigos): []) = p
compararMasAmigos ((p, nAmigos): seq) | nAmigos < snd(head(seq)) = compararMasAmigos seq
                                      | otherwise = compararMasAmigos ((p, nAmigos): tail(seq))

personasConMasAmigos :: [(String,String)] -> String
personasConMasAmigos rel = compararMasAmigos (diccionarioAmigos rel) 


-- extra:

-- devolver indice de una lista

sacarN :: Integer -> [t] -> [t]
sacarN _ [] = []
sacarN 0 xs = head(xs)
            | n >= longitud xs = []
            | otherwise = sacarN (n-1) (tail xs)
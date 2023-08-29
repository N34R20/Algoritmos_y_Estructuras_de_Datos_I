-- {- hola -}

doubleMe :: Num a => a -> a 
doubleMe x = x + x

f :: Int -> Int
f 1 = 8
f 4 = 131
f 16 = 16

g :: Int -> Int
g x | x == 8 = 16
    | x == 16 = 4
    | x == 131 = 1

h :: Int -> Int
h x = f (g x) 

k :: Int -> Int
k x = g (f x) 

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

estanRelacionados :: Int -> Int -> Bool
estanRelacionados x y | (x * x) + ((x * y) * (-(x)`div`(y))) == 0 = True
                      | otherwise = False
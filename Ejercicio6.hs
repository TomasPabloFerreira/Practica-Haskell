module Ejercicio6 where
    import Data.Char
    
    -- Apartado a
    suma :: (Num n) => [n] -> n
    suma [] = error "Lista vacia"
    suma [n] = n
    suma (n:ns) = n + suma  ns

    -- Apartado b
    alguno :: [Bool] -> Bool
    alguno [b] = b
    alguno (b:bs) = (b || alguno bs)

    -- Apartado c
    todos :: [Bool] -> Bool
    todos [b] = b
    todos (b:bs) = b && todos bs

    -- Apartado d
    codes :: [Char] -> [Int]
    codes [c] = [ord c]
    codes (c:cs) = [ord c] ++ codes cs

    -- Apartado e
    restos :: [Int] -> Int -> [Int]
    restos [n] divisor = [rem n divisor]
    restos (n:ns) divisor = [rem n divisor] ++ restos ns divisor

    -- Apartado f
    cuadrados :: (Num n) => [n] -> [n]
    cuadrados [n] = [n * n]
    cuadrados (n:ns) = [n * n] ++ cuadrados ns

    -- Apartado g
    longitud :: [a] -> Int
    longitud [a] = 1
    longitud (a:as) = 1 + longitud as

    longitudes :: [[a]] -> [Int]
    longitudes [l] = [longitud l]
    longitudes (l:ls) = [longitud l] ++ longitudes ls   

    -- Apartado h
    valid :: (Ord a, Num a) => (a,a) -> Bool
    valid (x,y) = x < (3*y)

    orden :: (Ord a, Num a) => [(a,a)] -> [(a,a)]
    orden [t] = if valid t then [t] else [t]
    orden (t:ts) = if valid t then [t] ++ orden ts else orden ts

    -- Apartado i
    par :: Int -> Bool
    par n = rem n 2 == 0

    pares :: [Int] -> [Int]
    pares [n] = if par n then [n] else []
    pares (n:ns) = if par n then [n] ++ pares ns else pares ns

    -- Apartado j
    isLetter :: Char -> Bool
    isLetter c = (ord c > (-1)) && (ord c < 128)

    -- letras :: [Char] -> [Char]
    -- letas [c] = if isLetter c then [c] else []
    -- letras (c:cs) = if isLetter c then [c] ++ letras cs else letras cs

    -- Apartado k
    valid' :: (Num n, Ord n) => [n] -> Int -> Bool
    valid' n m = longitud n > m

    masDe :: (Num n, Ord n) => [[n]] -> Int -> [[n]]
    masDe [l] m = if valid' l m then [l] else []
    masDe (l:ls) m = if valid' l m then [l] ++ masDe ls m else masDe ls m

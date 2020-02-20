module Ejercicio8 where

    -- Apartado a
    divisors :: Int -> [Int]
    divisors n = [ x | x <- [1..n], rem n x == 0]

    -- Apartado b
    matches :: Int -> [Int] -> [Int]
    matches n l = [x | x <- l, x == n]

    -- Apartado c
    unique :: [Int] -> [Int]
    unique list = [x | (index,x)<- zip [0..] list
                    , not(x `elem` (take index list))]

    -- Apartado d
    nValido :: Int -> Bool
    nValido n = n > 0 && n < 101
    cuadruplaValida :: (Int, Int, Int, Int) -> Bool
    cuadruplaValida (a,b,c,d) = nValido a && nValido b && nValido c && nValido d && ((a*a+b*b) == (c*c+d*d))
    
    cuadrupla :: (Int, Int, Int, Int) -> [(Int,Int,Int,Int)]
    cuadrupla (a,b,c,d) = [x | x <- [(a,b,c,d),(a,c,b,d)], cuadruplaValida x]

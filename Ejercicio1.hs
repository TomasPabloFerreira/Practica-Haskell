module Ejercicio1 where
    
    -- Apartado a 
    five :: a -> Float
    five a = 5

    --  Apartado b
    apply :: (a->b) -> a -> b
    apply fn val = fn val

    -- Apartado c
    id' :: a -> a
    id' x = x

    -- Apartado d
    first :: (a,b) -> a
    first tupla = fst tupla

    -- Apartado e
    derive :: (Fractional a) => (a -> a) -> a -> a -> a
    derive fn x a = (fn x - fn a) / (x - a)

    -- Apartado f
    sign :: (Ord a, Num a) => a -> Bool
    sign n = n >= 0

    -- Apartado g
        -- Usando sign
    absolute :: (Ord n, Num n) => n -> n
    absolute n = if not (sign n) then n*(-1) else n
        -- Sin usar sign
    absolute' :: (Num n, Ord n) => n -> n
    absolute' n = if (n < 0) then n*(-1) else n

    -- Apartado h
    pot :: (Num n) => Int -> n -> n
    pot 0 base = 1
    pot exp base = base * pot (exp-1) base

    -- Apartado i
    xor :: Bool -> Bool -> Bool
    xor a b = if (a && b) || (not a && not b) then False else True

    -- Apartado j
    max3 :: (Num n, Ord n) => n -> n -> n -> n
    max3 a b c = if (a > b && a > c) then a else (if b > a && b > c then b else c)

    -- Apartado k
    swap :: (a,b) -> (b,a)
    swap a = (snd a, fst a)
    
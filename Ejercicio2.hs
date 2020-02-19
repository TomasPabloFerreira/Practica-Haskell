module Ejercicio2 where
    
    -- Apartado a
    fnToInt :: (Int -> Int) -> Int
    fnToInt fn = fn 3

    -- Apartado b
    intToFnInt :: Int -> (Int -> Int)
    intToFnInt n = (+) 2

    -- Apartado c
    fnToFnInt :: (Int -> Int) -> (Int -> Int)
    fnToFnInt fn = max (fn 3)

    -- Apartado d
    intToBool :: Int -> Bool
    intToBool i = if(i > 5) then True else False

    -- Apartado e
    boolToFnEqual :: Bool -> (Bool -> Bool)
    boolToFnEqual b = (==) b

    -- Apartado f
    intCharToBoolean :: (Int, Char) -> Bool
    intCharToBoolean ic = if (fst ic == 3 && snd ic == 'a') then True else False

    -- Apartado g
    intFntoInt :: (Int -> Int) -> Int
    intFntoInt fn = fn 3

    -- Apartado h
    intToIntFn :: Int -> (Int -> Int)
    intToIntFn i = max i

    -- Apartado i
    anyToBool :: a -> Bool
    anyToBool a = True;

    anyToAny :: a -> a
    anyToAny a = a

module Ejercicio4 where

    -- f :: c -> d
    -- g :: a -> b -> c
    
    -- h :: a -> b -> d
    -- h x y = f (g x y)
    {-
    h equivale a h = f · g
    -----------------------
    el tipo de · (composición de funciones)
    es: (c -> d) -> (a -> b -> c) -> (a -> b -> d)
    -}


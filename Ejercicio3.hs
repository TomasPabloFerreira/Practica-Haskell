module Ejercicio3 where
    
    -- Apartado a
    f x = let (y,z) = (x,x) in y
    f' x = x

    -- Apartado b
    greater (x,y) = if x > y then True else False
    greater' (x,y) = x > y

    -- Apartado c
    fc (x,y) = let z = x + y in g (z,y) where g (a,b) = a - b
    fc' (x,y) = (x+y) - y

    
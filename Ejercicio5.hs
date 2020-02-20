module Ejercicio5 where

    isYearLeap :: Int -> Bool
    isYearLeap y = (rem y 4 == 0) && not (rem y 100 == 0)
    
module Ejercicio7 where
    
    scalarProduct :: [Int] -> [Int] -> Int
    scalarProduct l1 l2 = sum [ fst el * snd el | el <- zip l1 l2]
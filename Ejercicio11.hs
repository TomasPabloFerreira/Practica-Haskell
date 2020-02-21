module Ejercicio11 where
    data GenTree a = EmptyG | NodeG a [GenTree a]
    data BinTree a = EmptyB | NodeB (BinTree a) a (BinTree a)
                    deriving (Eq, Show)

    genToBin :: GenTree a -> BinTree a
    genToBin EmptyG = EmptyB
    genToBin (NodeG a []) = NodeB EmptyB a EmptyB
    genToBin (NodeG a [n]) = NodeB (genToBin n) a EmptyB
    genToBin (NodeG a (n:ns)) = NodeB (genToBin n) a (genToBin (head ns))

    inOrder :: BinTree a -> [a]
    inOrder EmptyB = []
    inOrder (NodeB izq a der) = inOrder izq ++ [a] ++ inOrder der
    
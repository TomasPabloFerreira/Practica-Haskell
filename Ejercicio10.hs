module Ejercicio10 where
    data DigBin = Cero | Uno
                deriving (Eq, Ord, Show)

    sumaDigBin :: DigBin -> DigBin -> DigBin
    sumaDigBin bin1 bin2 = if bin1 == Uno || bin2 == Uno then Uno else Cero

    type NumBin = [DigBin]
    sumaBin :: NumBin -> NumBin -> NumBin
    sumaBin [bin1] [bin2] = [sumaDigBin bin1 bin2]
    sumaBin (bin1:bins1) (bin2:bins2) = [sumaDigBin bin1 bin2] ++ sumaBin bins1 bins2
    

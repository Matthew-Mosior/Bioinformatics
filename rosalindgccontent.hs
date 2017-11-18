--Rosalind: Transcribing DNA into RNA
module Main where
    
--type definitions with corresponding function definitions.

--uppers
uppers :: String -> Int
uppers xs = length [x | x <- xs , x == 'A' || x == 'T' || x == 'G' || x == 'C']

--count
count :: Char -> String -> Int
count x xs = length [x' | x' <- xs , x == x']

--percent
percent :: Int -> Int -> Float
percent a b = (fromIntegral a / fromIntegral b) * 100

--gc
gc :: String -> [Float]
gc xs = [percent (count x xs) (uppers xs) | x <- ['G','C']]

--gccontent
gccontent :: [Float] -> Float
gccontent [] = 1
gccontent (x:xs) = x + sum xs

--IO function.    
main :: IO ()
main = putStrLn ("This Haskell script will return the GC content of a given DNA string.")
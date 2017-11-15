--Rosalind: Counting DNA Nucleotides.
module Main where

--Imports
import Data.List

--Type declarations with corresponding function definitions.

--count
count :: Char -> String -> Int
count x xs = length[x' | x' <- xs , x == x']

--nucleotidecounter
nucleotidecounter :: String -> [Int]
nucleotidecounter xs = [count x xs | x <- ['A','C','G','T']] 


--IO function.
main :: IO ()
main = putStrLn ("This Haskell script will return the count of each nucleotide in a given string.")

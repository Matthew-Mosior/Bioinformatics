--Rosalind: Counting Point Mutations
module Main where

--type definitions with corresponding function definitions.

--hammingdistance
hammingdistance :: String -> String -> Int
hammingdistance instr1 instr2 = length(filter(uncurry(==)) (zip instr1 instr2))

main :: IO ()
main = putStrLn ("This Haskell script will return the hamming distance of a given DNA string.")  

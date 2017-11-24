--Rosalind: Translating DNA into Protein.
module Main where

--imports:    
import Data.Char
import Data.List

--type definitions and corresponding function definitions.
              
--translation
translation :: String -> String
translation [] = [] 
translation (x:y:z:rest)    | map toUpper (x:y:z:[]) == "UUU" = "F" ++ translation rest 
                            | map toUpper (x:y:z:[]) == "UUC" = "F" ++ translation rest
                            | map toUpper (x:y:z:[]) == "UUA" = "L" ++ translation rest
                            | map toUpper (x:y:z:[]) == "UUG" = "L" ++ translation rest
                            | map toUpper (x:y:z:[]) == "UCU" = "S" ++ translation rest
                            | map toUpper (x:y:z:[]) == "UCC" = "S" ++ translation rest
                            | map toUpper (x:y:z:[]) == "UCA" = "S" ++ translation rest
                            | map toUpper (x:y:z:[]) == "UCG" = "S" ++ translation rest
                            | map toUpper (x:y:z:[]) == "UAU" = "Y" ++ translation rest
                            | map toUpper (x:y:z:[]) == "UAC" = "Y" ++ translation rest
                            | map toUpper (x:y:z:[]) == "UGU" = "C" ++ translation rest
                            | map toUpper (x:y:z:[]) == "UGC" = "C" ++ translation rest 
                            | map toUpper (x:y:z:[]) == "UGG" = "W" ++ translation rest 
                            | map toUpper (x:y:z:[]) == "CUU" = "L" ++ translation rest 
                            | map toUpper (x:y:z:[]) == "CUC" = "L" ++ translation rest 
                            | map toUpper (x:y:z:[]) == "CUA" = "L" ++ translation rest 
                            | map toUpper (x:y:z:[]) == "CUG" = "L" ++ translation rest 
                            | map toUpper (x:y:z:[]) == "CCU" = "P" ++ translation rest 
                            | map toUpper (x:y:z:[]) == "CCC" = "P" ++ translation rest 
                            | map toUpper (x:y:z:[]) == "CCA" = "P" ++ translation rest 
                            | map toUpper (x:y:z:[]) == "CCG" = "P" ++ translation rest 
                            | map toUpper (x:y:z:[]) == "CAU" = "H" ++ translation rest 
                            | map toUpper (x:y:z:[]) == "CAC" = "H" ++ translation rest 
                            | map toUpper (x:y:z:[]) == "CAA" = "Q" ++ translation rest 
                            | map toUpper (x:y:z:[]) == "CAG" = "Q" ++ translation rest 
                            | map toUpper (x:y:z:[]) == "CGU" = "R" ++ translation rest 
                            | map toUpper (x:y:z:[]) == "CGC" = "R" ++ translation rest 
                            | map toUpper (x:y:z:[]) == "CGA" = "R" ++ translation rest 
                            | map toUpper (x:y:z:[]) == "CGG" = "R" ++ translation rest 
                            | map toUpper (x:y:z:[]) == "AUU" = "I" ++ translation rest 
                            | map toUpper (x:y:z:[]) == "AUC" = "I" ++ translation rest
                            | map toUpper (x:y:z:[]) == "AUA" = "I" ++ translation rest 
                            | map toUpper (x:y:z:[]) == "AUG" = "M" ++ translation rest 
                            | map toUpper (x:y:z:[]) == "ACU" = "T" ++ translation rest 
                            | map toUpper (x:y:z:[]) == "ACC" = "T" ++ translation rest 
                            | map toUpper (x:y:z:[]) == "ACA" = "T" ++ translation rest 
                            | map toUpper (x:y:z:[]) == "ACG" = "T" ++ translation rest 
                            | map toUpper (x:y:z:[]) == "AAU" = "N" ++ translation rest
                            | map toUpper (x:y:z:[]) == "AAC" = "N" ++ translation rest 
                            | map toUpper (x:y:z:[]) == "AAA" = "K" ++ translation rest 
                            | map toUpper (x:y:z:[]) == "AAG" = "K" ++ translation rest 
                            | map toUpper (x:y:z:[]) == "AGU" = "S" ++ translation rest 
                            | map toUpper (x:y:z:[]) == "AGC" = "S" ++ translation rest 
                            | map toUpper (x:y:z:[]) == "AGA" = "R" ++ translation rest
                            | map toUpper (x:y:z:[]) == "AGG" = "R" ++ translation rest 
                            | map toUpper (x:y:z:[]) == "GUU" = "V" ++ translation rest 
                            | map toUpper (x:y:z:[]) == "GUC" = "V" ++ translation rest 
                            | map toUpper (x:y:z:[]) == "GUA" = "V" ++ translation rest
                            | map toUpper (x:y:z:[]) == "GUG" = "V" ++ translation rest 
                            | map toUpper (x:y:z:[]) == "GCU" = "A" ++ translation rest 
                            | map toUpper (x:y:z:[]) == "GCC" = "A" ++ translation rest 
                            | map toUpper (x:y:z:[]) == "GCA" = "A" ++ translation rest 
                            | map toUpper (x:y:z:[]) == "GCG" = "A" ++ translation rest 
                            | map toUpper (x:y:z:[]) == "GAU" = "D" ++ translation rest 
                            | map toUpper (x:y:z:[]) == "GAC" = "D" ++ translation rest 
                            | map toUpper (x:y:z:[]) == "GAA" = "E" ++ translation rest 
                            | map toUpper (x:y:z:[]) == "GAG" = "E" ++ translation rest 
                            | map toUpper (x:y:z:[]) == "GGU" = "G" ++ translation rest
                            | map toUpper (x:y:z:[]) == "GGC" = "G" ++ translation rest 
                            | map toUpper (x:y:z:[]) == "GGA" = "G" ++ translation rest 
                            | map toUpper (x:y:z:[]) == "GGG" = "G" ++ translation rest 
                            | map toUpper (x:y:z:[]) == "UAA" = "" ++ translation rest 
                            | map toUpper (x:y:z:[]) == "UAG" = "" ++ translation rest 
                            | map toUpper (x:y:z:[]) == "UGA" = "" ++ translation rest 
                            | otherwise = "X" ++ translation rest 

--IO function.
main :: IO ()
main = putStrLn ("This Haskell script will return the string of a translated protein from string RNA input.")
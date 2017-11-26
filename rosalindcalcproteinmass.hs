--Rosalind: Calculating Protein Mass
module Main where

--import
import Data.Char

--type definitions and corresponding function definitions.

--totalproteinmass
totalproteinmass :: String -> Double
totalproteinmass [] = 0.0 
totalproteinmass (x:rest)   | map toUpper (x:[]) == "A" = 71.03711 + totalproteinmass rest  
                            | map toUpper (x:[]) == "C" = 103.00919 + totalproteinmass rest
                            | map toUpper (x:[]) == "D" = 115.02694 + totalproteinmass rest
                            | map toUpper (x:[]) == "E" = 129.04259 + totalproteinmass rest
                            | map toUpper (x:[]) == "F" = 147.06841 + totalproteinmass rest
                            | map toUpper (x:[]) == "G" = 57.02146 + totalproteinmass rest
                            | map toUpper (x:[]) == "H" = 137.05891 + totalproteinmass rest
                            | map toUpper (x:[]) == "I" = 113.08406 + totalproteinmass rest
                            | map toUpper (x:[]) == "K" = 128.09496 + totalproteinmass rest
                            | map toUpper (x:[]) == "L" = 113.08406 + totalproteinmass rest
                            | map toUpper (x:[]) == "M" = 131.04049 + totalproteinmass rest
                            | map toUpper (x:[]) == "N" = 114.04293 + totalproteinmass rest 
                            | map toUpper (x:[]) == "P" = 97.05276 + totalproteinmass rest
                            | map toUpper (x:[]) == "Q" = 128.05858 + totalproteinmass rest
                            | map toUpper (x:[]) == "R" = 156.10111 + totalproteinmass rest
                            | map toUpper (x:[]) == "S" = 87.03203 + totalproteinmass rest
                            | map toUpper (x:[]) == "T" = 101.04768 + totalproteinmass rest
                            | map toUpper (x:[]) == "V" = 99.06841 + totalproteinmass rest
                            | map toUpper (x:[]) == "W" = 186.07931 + totalproteinmass rest
                            | map toUpper (x:[]) == "Y" = 163.06333 + totalproteinmass rest 
                            | otherwise = 0.0 + totalproteinmass rest

--IO function.                            
main :: IO ()
main = putStrLn ("This Haskell script will return the total weight of a protein string.")

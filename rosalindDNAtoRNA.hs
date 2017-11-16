--Rosalind: Transcribing DNA into RNA
module Main where

--imports
import Data.Char

--type definitions with corresponding function definitions.

--dnatorna
dnatorna :: String -> String
dnatorna [] = []
dnatorna inputstr = let 
                        repl 'T' = 'U'
                        repl 'A' = 'A'
                        repl 'G' = 'G'
                        repl 'C' = 'C'
                    in map repl (map toUpper(filter(`elem` "atgcATGC") inputstr)) 

--IO function.    
main :: IO ()
main = putStrLn ("This Haskell script will return the a string of transcribed RNA from string DNA input.")

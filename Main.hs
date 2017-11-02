--Reverse complement DNA sequence Haskell script.

module Main where

import Data.Char 
import Data.List   

--types and corresponding function declarations:

--main IO function.
main :: IO()

--User DNA sequence input to capitalized reversed string.
userInputreverse :: String -> String
userInputreverse   [] = []
userInputreverse (x:xs) = if x == 'a' || x == 't' || x == 'g' || x == 'c' || x == 'A' || x == 'T' || x == 'G' || x == 'C' then reverse(map toUpper(x:rest)) else rest
                   where rest = reverse (userInputreverse xs)

--Another way to write DNA sequence capitalized reversed string function (with addition of finding complement DNA):
userInputcomplement :: String -> String
userInputcomplement x = let 
                        repl 'A' = 'T' 
                        repl 'T' = 'A' 
                        repl 'G' = 'C' 
                        repl 'C' = 'G' 
                    in map repl (reverse ( map toUpper (filter (`elem` "atgcATGC")x)))


main = putStrLn ("These functions are used to find the reverse and reverse complement to a user DNA sequence input.")
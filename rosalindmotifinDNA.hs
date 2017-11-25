--Rosalind: Finding a Motif in DNA
module Main where

--imports
import Data.List
import Data.Maybe

--singlemotif
firstmotif :: String -> String -> Int
firstmotif substring basestring = findstr substring basestring 0
    where
        findstr substringer (x:xs) n    | substringer == (take(length substringer) (x:xs)) = (n+1)
                                        | otherwise = findstr substringer xs (n+1)

--allmotif
allmotif :: String -> String -> [Int]
allmotif [] _ = []
allmotif substring basestring = filter(\i -> substring `isPrefixOf` drop i basestring) (head substring `elemIndices` basestring)

--iplus1allmotif
iplus1allmotif :: [Int] -> [Int]
iplus1allmotif locations = map (+1) locations

main :: IO ()
main = putStrLn ("This haskell script will return the locations of a DNA substring in a DNA basestring.")
--Rosalind: Enumerating Gene Orders.
module Main where

--type definitions and corresponding function definitions.

--Option 1
--cartesian
cartesian :: [[a]] -> [[a]] -> [[a]]
cartesian xs ys = [x ++ y | x <- xs , y <- ys]

--visualenum 
visualenum :: Int -> [[a]] -> [[a]]
visualenum n xs = foldr1 cartesian (replicate n xs)
--

--Option 2
--spliter
spliter :: [a] -> [([a],[a])]
spliter [] = [([],[])]
spliter (x:xs) = ([],x:xs) : [(x:ys,zs) | (ys,zs) <- spliter xs]

--permutation
permutations :: [a] -> [[a]]
permutations [] = [[]]
permutations (x:xs) = [ys ++ x:zs | permutation <- permutations xs , (ys,zs) <- spliter permutation]
--

--IO function
main :: IO ()
main = putStrLn ("This Haskell script will return the total number of permutations of length n and all such permutations of n.")
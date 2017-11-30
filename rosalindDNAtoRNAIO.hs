--Rosalind: Transcribing DNA into RNA
module Main where
    
--imports
import Data.Char
import System.IO
import System.Environment (getArgs)
    
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

--interactWith
interactWith :: (String -> String) -> FilePath -> FilePath -> IO()     
interactWith interacter inputFile outputFile = do 
                input <- readFile inputFile
                writeFile outputFile (interacter input)                     

--IO function.    
main :: IO ()
main = mainWith dnatorna
    where 
        mainWith interacter = do 
            args <- getArgs
            case args of
                [input,output]  -> interactWith interacter input output
                _               -> putStrLn ("Error: Exactly two arguments needed. (inputfile outputfile)")
-- ghc chapter07.hs
-- ./chapter07.exe

import System.IO
import Data.Char

main = do
    putStrLn "Chapter 07 - Start!"
    
    -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
    
    putStrLn "Twice"
    let twice :: (a -> a) -> a -> a
        twice f x = f (f x)
    print (twice (* 2) 3)         -- Apply 'times two' *twice* to 3 (i.e. 12)
    print (twice (+ 1) 3)         -- Apply 'add one' *twice* to 3 (i.e. 5)
    print (twice reverse [1..10]) -- Just returns original list
 
    -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

    putStrLn "Map"              -- Applies function to every element in list and returns list
    print (map (+1) [1..10])
    print (map even [1..10])
    print (map reverse ["Hello", "world!"])
    print (map (map (+1)) [[1, 2, 3], [4, 5, 6]])

    -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

    putStrLn "Filter"           -- Applies function to every element in list and returns list containing only items that evaluate to true
    print (filter even [1..10])
    print (filter (>5) [1..10])
    print (filter (/= ' ') "Hello, world!")

    -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

    putStrLn "All"              -- Retruns true if function applied to every element in list is true
    print (all even [1..10])

    -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

    putStrLn "Any"              -- Retruns true if function applied to any element in list is true
    print (any even [1..10])

    -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

    putStrLn "TakeWhile"
    print (takeWhile even [1..10])

    -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

    putStrLn "DropWhile" 
    print (dropWhile even [1..10])

    -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

    putStrLn "Chapter 07 - Compete!"

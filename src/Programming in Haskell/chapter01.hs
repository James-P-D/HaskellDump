-- ghc chapter01.hs
-- ./chapter01.exe

import System.IO

main = do
    putStrLn "Chapter 01 - Start!"
    
    -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
    
    putStrLn "Total of 1 to 10"
    let total = sum[1..10]
    print total
    
    -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
    
    putStrLn "Sorting"
    let qsort :: [Int] -> [Int]                             -- qsort is array-of-int to array-of-int
        qsort [] = []                                       -- base case
        qsort (x:xs) = qsort smaller ++ [x] ++ qsort larger -- non-base case
                       where
                           smaller = [a | a <- xs, a <= x]
                           larger  = [b | b <- xs, b > x]
    let unsorted = [3, 10, 6, 2, 8, 5, 7, 4, 1, 9]                           
    let sorted = qsort unsorted
    putStrLn "Unsorted"
    print unsorted
    putStrLn "Sorted"
    print sorted
    
    -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
    
    putStrLn "Chapter 01 - Compete!"

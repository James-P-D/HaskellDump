-- ghc chapter01.hs
-- ./chapter01.exe

import System.IO

main = do
    putStrLn "Chapter 01 - Start!"
    
    -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
    
    putStrLn "Total of 1 to 10"
    let total = sum[1..10]                                  -- List comprehension
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

    putStrLn "Exercise 1"
    putStrLn "Doubling 4"
    let double x = x * 2
    print (double 4)
    
    -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

    putStrLn "Exercise 3"
    let product :: [Int] -> Int
        product [] = 1
        product (x:xs) = x * product xs
    putStrLn "product [1..5]"
    print (product [1..5])
    
    -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
    
    putStrLn "Chapter 01 - Compete!"

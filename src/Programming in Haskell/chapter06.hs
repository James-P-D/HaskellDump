-- ghc chapter06.hs
-- ./chapter06.exe

import System.IO
import Data.Char

main = do
    putStrLn "Chapter 06 - Start!"
    
    -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
    
    putStrLn "Factorial"
    let fac :: Int -> Int
        fac 0 = 1
        fac n = n * fac (n - 1)
    print (fac 5)
    
    -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

    putStrLn "List product"
    let listProduct :: [Int] -> Int
        listProduct [] = 1
        listProduct (x:xs) = x * listProduct xs
    print (listProduct [1..10])
    
    -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

    putStrLn "List length"
    let listLength :: [Int] -> Int
        listLength [] = 0
        listLength (x:xs) = 1 + listLength xs
    print (listLength [1..10])
    
    -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

    putStrLn "List reverse"
    let listReverse :: [Int] -> [Int]
        listReverse [] = []
        listReverse (x:xs) = listReverse xs ++ [x]
    print (listReverse [1..10])
    
    -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

    putStrLn "List zip"
    let listZip :: [a] -> [b] -> [(a, b)]
        listZip [] _ = []
        listZip _ [] = []
        listZip (x:xs) (y:ys) = (x, y) : listZip xs ys
    print (listZip [1..10] [21..30])
    
    -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

    putStrLn "Fibonacci"
    let fib :: Int -> Int
        fib 0 = 0
        fib 1 = 1
        fib n = fib (n -2) + fib (n - 1)
    print (fib 10)

   -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

    putStrLn "Odd/Even"
    let odd :: Int -> Bool
        odd 0 = False
        odd n = even (n-1)
    let even :: Int -> Bool
        even 0 = True
        even n = odd (n-1)
    print (odd 5)
    print (even 5)
    print (odd 6)
    print (even 6)
 
    -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

    putStrLn "Exercise 1"

    putStrLn "Factorial"
    let facSafe :: Int -> Int
        facSafe 0         = 1
        facSafe n | n > 0 = n * facSafe (n - 1)
        facSafe _         = 0
    print (facSafe 5)
    print (facSafe (-5))

    -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

    putStrLn "Exercise 2"

    putStrLn "SumDown"
    let sumDown :: Int -> Int
        sumDown 0 = 0
        sumDown n = n + sumDown (n - 1)
    print (sumDown 3)
    
    -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

    putStrLn "Exercise 3"

    putStrLn "Pow"
    let pow :: Int -> Int -> Int
        pow m 0 = 1
        pow m n = m * (pow m (n-1))
    print (pow 3 4)

    -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

    putStrLn "Chapter 06 - Compete!"

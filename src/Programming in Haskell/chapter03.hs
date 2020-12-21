-- ghc chapter03.hs
-- ./chapter03.exe

import System.IO

main = do
    putStrLn "Chapter 03 - Start!"
    
    -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
    
    putStrLn "Tuples in (). add (3, 4)"
    let add :: (Int, Int) -> Int
        add (x, y) = x + y
    print (add (3, 4))
    
    putStrLn "Can return result of list comprehension"
    let zeroToN :: Int -> [Int]
        zeroToN n = [0..n]
    print (zeroToN 5)
    
    -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
    
    putStrLn "Currying..."    
    let add' :: Int -> (Int -> Int)
        add' x y = x+y
    print (add' 1 2)

    let mult' :: Int -> (Int -> ((Int -> Int)))
        mult' x y z = x * y * z
    print (mult' 1 2 3)

    -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

    putStrLn "Polymorphism"
    let reverse' :: [a] -> [a] -- 'type' should be lower-case single letter
        reverse' [] = []
        reverse' (x:xs) = (reverse' xs) ++ [x]

    print (reverse' [1..10])

    -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

    putStrLn "Equality"
    print (True == True)
    print (True /= True)
    
    -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

    putStrLn "Show for converting vars to strings"
    print (show False)
    print (show 1)
    print (show 3.1415)
    print (show [1..10])
    
    -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

    putStrLn "Read for converting strings to vars"
    print (read "False" :: Bool)
    print (read "1" :: Int)
    print (read "3.1415" :: Float)
    print (read "[1, 2, 3]" :: [Int])
    print (read "(1, 2.3, False)" :: (Int, Float, Bool))
    
    -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

    putStrLn "Division and modulus"
    print (div 11 2)
    print (11 `div` 2)
    print (mod 11 2)
    print (11 `mod` 2)
    
    -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

    putStrLn "Exercise 1"
    -- ['a', 'b', 'c']              :: [Char]
    -- ('a', 'b', 'c')              :: (Char, Char, Char)
    -- [(False, '0'), (True, '1')]  :: [(Bool, Char)]
    -- ([False, True], ['0', '1'])  :: ([Bool], [Char])
    -- [tail, init, reverse]        :: [[a] -> [a]]

    -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

    putStrLn "Chapter 03 - Compete!"

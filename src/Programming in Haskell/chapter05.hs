-- ghc chapter05.hs
-- ./chapter05.exe

import System.IO
import Data.Char

main = do
    putStrLn "Chapter 05 - Start!"
    
    -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
    
    putStrLn "one to ten"
    print [1..10]
    
    putStrLn "Square numbers"
    print [x^2 | x <- [1..10]]
    
    putStrLn "List of tuples"
    print [(x, y) | x <- [1, 2, 3], y <- ['a', 'b', 'c']]

    putStrLn "Firsts of tuples"
    let firsts l = [x | (x,_) <- l]
    print (firsts [(1, 2), (3, 4), (5, 6)])
        
    -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

    putStrLn "Using guards to calc factors and primes"
    let factors n = [x | x <- [1..n], n `mod` x == 0]
    print (factors 15)
    
    let prime n = factors n == [1, n] -- n is prime if the factors of n and 1 and numbers
    print (prime 10)
    print (prime 17)
    
    let primes n = [x | x <- [1..n], prime x]
    print (primes 400)
    
    -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

    putStrLn "Zipping"    
    print (zip [1, 2, 3] [4, 5, 6])
    let pairs :: [a] -> [(a, a)]
        pairs l = zip l (tail l)
    print (pairs [1,2,3,4])
    let sorted :: Ord a => [a] -> Bool
        sorted l = and [x <= y | (x, y) <- pairs l]
    print (sorted [1, 2, 3, 4, 5])
    print (sorted [1, 2, 30, 4, 5])

    -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

    putStrLn "String comprehension"
    let someString = "abcdefg"
    print (someString !! 2) -- Get 3rd element
    print (take 3 someString)
    print (drop 3 someString)
    print (length someString)

    let lowercaseCount :: String -> Int
        lowercaseCount l = length [x | x <- l, x >= 'a', x <= 'z']
    let uppercaseCount :: String -> Int
        uppercaseCount l = length [x | x <- l, x >= 'A', x <= 'Z']
    print (lowercaseCount "Hello James")
    print (uppercaseCount "Hello James")
    
    let charCount :: Char -> String -> Int
        charCount c l = length [x | x <-l, x == c]
    print (charCount 'l' "Hello James")
    
    -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

    putStrLn "Caesar cipher"
    let lowerCharToInt :: Char -> Int
        lowerCharToInt c = ord c - ord 'a'
    let intToLowerChar :: Int -> Char
        intToLowerChar n = chr (ord 'a' + n)

    let upperCharToInt :: Char -> Int
        upperCharToInt c = ord c - ord 'A'
    let intToUpperChar :: Int -> Char
        intToUpperChar n = chr (ord 'A' + n)

    let shift :: Int -> Char -> Char
        shift n c | isLower c = intToLowerChar ((lowerCharToInt c + n) `mod` 26)
                  | isUpper c = intToUpperChar ((upperCharToInt c + n) `mod` 26)
                  | otherwise = c
    let encode :: Int -> String -> String
        encode n s = [shift n c | c <- s]
        
    print (encode 1 "Hello World!")
    print (encode 1 "ABCXYZabxyz")
    
    -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

    putStrLn "Exercise 1"
    print (sum [x^2 | x <- [1..100]])

    putStrLn "Exercise 2"
    let grid :: Int -> Int -> [(Int, Int)]
        grid x y = [(x2, y2) | x2 <- [0..x], y2 <- [0..y]]
    print (grid 1 2)
    
    putStrLn "Exercise 3"
    let square :: Int -> [(Int, Int)]
        square n = [(x, y) | (x,y) <- grid n n, x /=y]
    print (square 2)

    putStrLn "Exercise 4"
    let replicator :: Int -> a -> [a]
        replicator n x = [x | _ <- [1..n]]
    print (replicator 3 True)

    putStrLn "Exercise 5"
    let pyth :: Int -> [(Int, Int, Int)]
        pyth n = [(x, y, z) | x <- [1..n], y <- [1..n], z <- [1..n], x^2 + y^2 == z^2]
    print (pyth 10)

    putStrLn "Exercise 6"
    let perfect :: Int -> [Int]
        perfect n = [x | x <- [1..n], sum (tail(factors x)) == n]
    print (perfect 500)


    -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

    putStrLn "Chapter 05 - Compete!"

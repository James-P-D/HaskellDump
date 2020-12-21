-- ghc chapter04.hs
-- ./chapter04.exe

import System.IO

main = do
    putStrLn "Chapter 04 - Start!"
    
    -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
    
    putStrLn "Absolute"
    let absolute :: Int -> Int
        absolute n = if n > 0 then n else -n
    print (absolute (-5))
    print (absolute 5)
    
    putStrLn "Absolute with guards"
    let absolute2 :: Int -> Int
        absolute2 n | n >= 0    = n
                    | otherwise = -n
    print (absolute2 (-5))
    print (absolute2 5)
    
    putStrLn "Signum with guards"
    let signum :: Int -> Int
        signum n | n >= 0    = 1
                 | n <= 0    = -1
                 | otherwise = 0
    print (signum (-10))
    print (signum 10)
    print (signum 0)
    
    -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

    putStrLn "Tuple patterns"
    let first :: (a, a) -> a
        first (a, _) = a
    let second :: (a, a) -> a
        second (_, b) = b
    print (first (11, 22))
    print (second (11, 22))
    
    -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

    putStrLn "List patterns"
    let startsWithA :: [Char] -> Bool
        startsWithA ['a', _, _] = True
        startsWithA ['A', _, _] = True
        startsWithA _        = False
    print (startsWithA ['A', 'B', 'C'])
    print (startsWithA ['X', 'A', 'A'])
    print (startsWithA ['a', 'a', 'a'])
        
    let myHead :: [a] -> a
        myHead (x:_) = x
    let myTail :: [a] -> [a]
        myTail (_:xs) = xs
    print (myHead [1, 2, 3, 4])        
    print (myTail [1, 2, 3, 4])        

    -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

    putStrLn "Lambdas"
    let doubler = \x -> x * 2
    print (doubler 5)
    
    let evenNumbers =  map (\x -> x * 2) [1..10]
    print evenNumbers
    
    -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

    putStrLn "Exercise 1"
    let halve :: [a] -> ([a], [a])
        halve x = ((take ((length x) `div` 2) x), (drop ((length x) `div` 2) x))
    print (halve [1..10])

    putStrLn "Exercise 2a"
    let third1 :: [a] -> a
        third1 x = head (tail (tail x))
    print (third1 [1..10])    
    
    putStrLn "Exercise 2b"
    let third2 :: [a] -> a
        third2 x = x !! 2     -- REMEMBER! !! uses zero-indexing, so 3rd element is index 2
    print (third2 [1..10])    
    
    putStrLn "Exercise 2c"
    let third3 :: [a] -> a
        third3 (_:_:x:_) = x
    print (third3 [1..10])    
    
    putStrLn "Exercise 3a"
    let safeTail1 :: [a] -> [a]
        safeTail1 x = if (null x) then [] else (tail x)
    print (safeTail1 [1..5])      
    print (safeTail1 [] :: [Int]) -- Note we have to specify the type!

    putStrLn "Exercise 3b"
    let safeTail2 :: [a] -> [a]
        safeTail2 x | (null x)  = []
                    | otherwise = (tail x)
    print (safeTail2 [1..5])      
    print (safeTail2 [] :: [Int]) -- Note we have to specify the type!
    
    putStrLn "Exercise 3c"
    let safeTail3 :: [a] -> [a]
        safeTail3 []     = []
        safeTail3 (_:xs) = xs
                  
    print (safeTail3 [1..5])      
    print (safeTail3 [] :: [Int]) -- Note we have to specify the type!
    
    -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

    putStrLn "Chapter 04 - Compete!"

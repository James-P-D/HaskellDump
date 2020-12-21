-- ghc chapter02.hs
-- ./chapter02.exe

import System.IO

main = do
    putStrLn "Chapter 02 - Start!"
    
    -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
    
    putStrLn "head of [1..10]"    
    print (head [1..10])
    putStrLn "tail of [1..10]"    
    print (tail [1..10])
    putStrLn "!! to get n-th element (zero-indexed), so [1..10] !! 2 gives us.."
    print ([1..10] !! 2)
    putStrLn "take 3 [1..10]"
    print (take 3 [1..10])
    putStrLn "drop 3 [1..10]"
    print (drop 3 [1..10])
    putStrLn "length [1..10]"
    print (length [1..10])
    putStrLn "++ to concatonate lists, so [1..10] ++ [20..30] give us.."
    print ([1..10] ++ [20..30])
    putStrLn "revese [1..10]"
    print (reverse [1..10])
    
    -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
    
    putStrLn "Factorial 5"
    let factorial n = product [1..n]
    print (factorial 5)
    
    -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

    putStrLn "Mean average of [1..10]"
    let mean_average xs = sum xs `div` length xs
    print (mean_average [1..10])

    -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

    -- Few notes on indentation

    let a = b + c
            where
                b = 1 -- b and c are local to a
                c = 2
    let d = a * 2
    
    -- we can also use braces to further emphasise scope:
    let a = b + c
            where
               {b = 1; -- b and c are local to a
                c = 2};
    let d = a * 2

    -- ..or even write it on a single line:
    let a = b + c where {b = 1; c = 2};
    let d = a * 2;
    
    -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

    putStrLn "Exercise 4"
    putStrLn "Get last element of [1..10]"
    print (last [1..10])
    print (head (reverse [1..10]))

    -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

    putStrLn "Exercise 5"
    putStrLn "init removes last element"
    print (init [1..10])
    print (reverse (tail (reverse [1..10])))
    
    -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

    putStrLn "Chapter 02 - Compete!"

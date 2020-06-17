module HigherOrderFunctions where

higher_order_function_examples = do
    putStrLn ""
    putStrLn "higher_order_function_examples"
    putStrLn ""

    let times4 :: Int -> Int
        times4 x = x * 4

    -- map applies a function to every item in the list
    putStrLn $ "map times4 [1,2,3,4,5] = " ++ show (map times4 [1,2,3,4,5])

    -- function that takes an Int input as first parameter,
    -- a function for second paramter (that itself takes an Int as parameter and returns an Int)
    -- and the whole function returns an int
    let multiplier :: Int -> (Int -> Int) -> Int
        -- apply 'someFunction' to parameter 'x'
        multiplier x someFunction = someFunction x

    putStrLn $ "multiplier 3 times4 = " ++ show (multiplier 3 times4)

    -- Create functions for doubling Ints and for tripling them
    let doubleIt :: Int -> Int
        doubleIt x = x * 2
    let tripleIt :: Int -> Int
        tripleIt x = x * 3

    -- Create a function that takes an Int as parameter and returns an
    -- Int -> Int function as it's own return value
    let doubleIfEvenTripleIfOdd :: Int -> (Int -> Int)
        doubleIfEvenTripleIfOdd n
            | n `mod` 2 == 0 = doubleIt
            | otherwise = tripleIt

    let three = 3
    let four = 4
    let functionA = doubleIfEvenTripleIfOdd three
    let functionB = doubleIfEvenTripleIfOdd four

    putStrLn $ "Testing on 3 .... = " ++ show (functionA three)
    putStrLn $ "Testing on 4 .... = " ++ show (functionB four)

    putStrLn "-----------------"

module Lambdas where

lambda_examples = do
    putStrLn ""
    putStrLn "lambda_examples"
    putStrLn ""

    -- We can declare anonymous functions (lambdas) with the '\' notation:
    let doubler = \x -> x * 2
    putStrLn $ "doubler 3 = " ++ show (doubler 3)

    -- We can use the anonymous function in map
    putStrLn $ "map doubler [1..10] = " ++ show (map doubler [1..10])

    -- We can return anonymous functions from standard functions
    let getTripler :: (Int -> Int)
        getTripler = \x -> x * 3

    putStrLn $ "getTripler 3 = " ++ show (getTripler 3)

    putStrLn "-----------------"

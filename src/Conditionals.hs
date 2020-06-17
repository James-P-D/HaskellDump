module Conditionals where

conditional_examples = do
    putStrLn ""
    putStrLn "conditional_examples"
    putStrLn ""

    -- We can declare anonymous functions (lambdas) with the '\' notation:
    let doubler = \x -> x * 2
    putStrLn $ "doubler 3 = " ++ show (doubler 3)

    -- Every if statement must contain an else
    let doubleEvenNumber y = if (y `mod` 2 /= 0)
        then y
        else y * 2

    putStrLn $ "doubleEvenNumber 3 = " ++ show (doubleEvenNumber 3)
    putStrLn $ "doubleEvenNumber 4 = " ++ show (doubleEvenNumber 4)

    -- We can use case statements (Note that if we want do >, <, in range,
    -- etc. then you need to use Guards ('|') (See functions.hs))
    let doSomethingExciting :: Int -> String
        doSomethingExciting n = case n of
            16 -> "Start driving"
            18 -> "Start voting"
            21 -> "Start drinking in US"
            _ -> "Nothing exciting"

    putStrLn $ "doSomethingExciting 17 = " ++ show (doSomethingExciting 17)
    putStrLn $ "doSomethingExciting 18 = " ++ show (doSomethingExciting 18)

    putStrLn "-----------------"

module Tuples where

tuple_examples = do
    putStrLn ""
    putStrLn "tuple_examples"
    putStrLn ""

    -- Stores list of multiple data types, but has a fixed size
    let randTuple = (1, "Random tuple")
    putStrLn $ "(1, \"Random tuple\") = " ++ show randTuple

    -- A tuple pair stores 2 values
    let bobSmith = ("Bob Smith", 52)
    putStrLn $ "bobSmith = " ++ show bobSmith

    -- Get the first value
    let bobsName = fst bobSmith
    putStrLn $ "fst bobSmith = " ++ show bobsName

    -- Get the second value
    let bobsAge = snd bobSmith
    putStrLn $ "snd bobSmith = " ++ show bobsAge

    -- If we don't care about a field, use '_'
    let (_, justBobsAge) = bobSmith
    putStrLn $ "justBobsAge = " ++ show justBobsAge

    -- zip can combine values into tuple pairs
    let names = ["Bob","Mary","Tom"]
    let addresses = ["123 Main","234 North","567 South"]
    let namesAndAddresses = zip names addresses
    putStrLn $ "names = " ++ show names
    putStrLn $ "addresses = " ++ show addresses
    putStrLn $ "zip names addresses = " ++ show namesAndAddresses

    putStrLn "-----------------"

module DataTypes where

data_type_examples = do
    putStrLn ""
    putStrLn "data_type_examples"
    putStrLn ""

    let maxInt = maxBound :: Int
    let minInt = minBound :: Int

    putStrLn $ "maxInt = " ++ show maxInt
    putStrLn $ "minInt = " ++ show minInt

    putStrLn "-----------------"

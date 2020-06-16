module DataTypes where

data_type_examples = do
    putStrLn ""
    putStrLn "data_type_examples"
    putStrLn ""

    -- Everything in Haskall is immutable so can't be changed
    let someInt = 5
    putStrLn $ "someInt = " ++ show someInt
    -- ...so something like the following line will cause a compile-time error
    --someInt = someInt + 1

    let someNegativeInt = -5
    putStrLn $ "someNegativeInt = " ++ show someNegativeInt

    -- We can specify the type of variables
    let someOtherInt = 123 :: Int
    putStrLn $ "someOtherInt = " ++ show someOtherInt

    -- Float : Single precision floating point number
    -- Double : Double precision floating point number (11 pts precision)
    let bigFloat = 3.99999999999 + 0.00000000005
    putStrLn $ "bigFloat = " ++ show bigFloat

    -- We can specify whether something is a Double or Float
    let someFloat = (1/3) :: Float
    putStrLn $ "someFloat = " ++ show someFloat
    let someDouble = (1/3) :: Double
    putStrLn $ "someDouble = " ++ show someDouble

    -- We can get the min/max values for integers, but not Float or Double
    let maxInt = maxBound :: Int
    let minInt = minBound :: Int

    putStrLn $ "maxInt = " ++ show maxInt
    putStrLn $ "minInt = " ++ show minInt

    -- We can declare Chars
    let someChar = 'x' :: Char
    putStrLn $ "someChar = " ++ show someChar

    -- We can declare Strings
    let someString = "Hello!\nBye!" :: String
    -- Note that 'show' will escape the '\n'..
    putStrLn $ "someString = " ++ show someString
    -- ..whereas not using 'show' will cause the carriage return to be printed as expected
    putStrLn $ "someString = " ++ someString

    -- We can declare booleans
    let someBool = True :: Bool
    putStrLn $ "someBool = " ++ show someBool

    putStrLn "-----------------"

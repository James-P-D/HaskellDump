module Maths where

maths_examples = do
    putStrLn ""
    putStrLn "maths_examples"
    putStrLn ""

    let addEx = 5 + 4
    let subEx = 5 - 4
    let multEx = 5 * 4
    let divEx = 5 / 4

    putStrLn $ "5 + 4 = " ++ show addEx
    putStrLn $ "5 - 4 = " ++ show subEx
    putStrLn $ "5 * 4 = " ++ show multEx
    putStrLn $ "5 / 4 = " ++ show divEx

    -- mod is a prefix operator
    let modEx = mod 5 4
    putStrLn $ "mod 5 4 = " ++ show modEx

    -- With back ticks we can use it as an infix operator
    let modEx2 = 5 `mod` 4
    putStrLn $ "5 `mod` 4 = " ++ show modEx2

    -- Negative numbers must be surrounded with parentheses
    let negNumEx = 5 + (-4)
    putStrLn $ "5 + (-4) = " ++ show modEx2

    -- We can calculate square roots
    let sqrtOf81 = sqrt 81
    putStrLn $ "sqrt 81 = " ++ show sqrtOf81

    let number9 = 9 :: Int
    -- Must use fromIntegral when calling 'sqrt()' on an Int!
    --let sqrtOf9 = sqrt number9
    let sqrtOf9 = sqrt (fromIntegral number9)
    putStrLn $ "sqrt (fromIntegral number9) = " ++ show sqrtOf9


    let piVal = pi
    putStrLn $ "pi = " ++ show piVal
    let ePow9 = exp 9
    putStrLn $ "exp 9 = " ++ show ePow9
    let logOf9 = log 9
    putStrLn $ "log 9 = " ++ show logOf9
    let squared9 = 9 ** 2
    putStrLn $ "9 ** 2 = " ++ show squared9
    let truncateVal = truncate 9.999
    putStrLn $ "truncate 9.999 = " ++ show truncateVal
    let roundVal = round 9.999
    putStrLn $ "round 9.999 = " ++ show roundVal
    let ceilingVal = ceiling 9.999
    putStrLn $ "ceiling 9.999 = " ++ show ceilingVal
    let floorVal = floor 9.999
    putStrLn $ "floor 9.999 = " ++ show floorVal

    -- Also sin, cos, tan, asin, atan, acos, sinh, tanh, cosh, asinh, atanh, acosh
    let sinVal = sin 45
    putStrLn $ "sin 45 = " ++ show sinVal
    let cosVal = cos 45
    putStrLn $ "cos 45 = " ++ show cosVal
    let tanVal = tan 45
    putStrLn $ "tan 45 = " ++ show tanVal

    let trueAndFalse = True && False
    putStrLn $ "True && False = " ++ show trueAndFalse
    let trueOrFalse = True || False
    putStrLn $ "True || False = " ++ show trueOrFalse
    let notTrue = not True
    putStrLn $ "not True = " ++ show notTrue

    -- Remember you use :t in the terminal to get the data type (:t value)
    -- You can also see how functions use data types with :t

    -- :t (+) = Num a => a -> a -> a
    -- Type a is in the type class num, we receive 2 of them and return 1

    -- :t truncate = (RealFrac a, Integral b) => a -> b
    putStrLn "-----------------"

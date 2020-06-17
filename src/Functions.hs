module Functions where


function_examples = do
    putStrLn ""
    putStrLn "function_examples"
    putStrLn ""

    -- You can define a type declaration for functions
    -- funcName :: param1 -> param2 -> returnType
    -- (oooooh! Rememebr lambda Calculus...? :D )
    let addInts :: Int -> Int -> Int
        -- Note the indentation of the implemention!
        addInts x y = x + y

    putStrLn $ "addInts 4 5 = " ++ show (addInts 4 5)

    -- This will cause a compile-time error since we aren't passing ints!
    --putStrLn $ "addInts 4.0 5.9 = " ++ show (addInts 4.0 5.9)

    -- Without type declaration you can add floats as well
    let addNumbers x y = x + y
    putStrLn $ "addNumbers 4 5 = " ++ show (addNumbers 4 5)
    putStrLn $ "addNumbers 4.0 5.9 = " ++ show (addNumbers 4.0 5.9)

    -- You can also add tuples : addTuples (1,2) (3,4) = (4,6)
    let addTuples :: (Int, Int) -> (Int, Int) -> (Int, Int)
        -- Note the indentation of the implemention!
        addTuples (x, y) (x2, y2) = (x + x2, y + y2)
    putStrLn $ "addTuples (1, 2) (3, 4) = " ++ show (addTuples (1, 2) (3, 4))

    -- We can do this... which isnt quick pattern matching, but isn't
    -- quite guards either (more on that later)
    -- TODO: Look into what this is called
    let whatAge :: Int -> String
        whatAge 16 = "You can start driving"
        whatAge 18 = "You can start voting"
        whatAge 21 = "You can start drinking in the US"
        -- The default
        whatAge _ = "Nothing Important"
    putStrLn $ "whatAge 18 = " ++ show (whatAge 18)
    putStrLn $ "whatAge 33 = " ++ show (whatAge 33)

    -- Define that we expect an Int in and out
    let factorial :: Int -> Int
        -- If 0 return a 1 (Recursive Function)
        factorial 0 = 1
        factorial n = n * factorial (n - 1)

    putStrLn $ "factorial 5 = " ++ show (factorial 5)
    putStrLn $ "factorial 9 = " ++ show (factorial 9)

    -- We can use guards that provide different actions based on conditions
    let isOdd :: Int -> Bool
        -- Again, note the whacky indenting!
        isOdd n
            | n `mod` 2 == 0 = False -- if the modulus using 2 equals 0 return False
            | otherwise = True       -- Else return True

    putStrLn $ "isOdd 3 = " ++ show (isOdd 3)
    putStrLn $ "isOdd 4 = " ++ show (isOdd 4)

    -- Use guards to define the school to output
    let whatGrade :: Int -> String
        whatGrade age
            | (age >= 5) && (age <= 6) = "Kindergarten"
            | (age > 6) && (age <= 10) = "Elementary School"
            | (age > 10) && (age <= 14) = "Middle School"
            | (age > 14) && (age <= 18) = "High School"
            | otherwise = "Go to college"

    putStrLn $ "whatGrade 7 = " ++ show (whatGrade 7)
    putStrLn $ "whatGrade 70 = " ++ show (whatGrade 70)

    -- The where clause keeps us from having to repeat a calculation
    let batAvgRating :: Double -> Double -> String
        batAvgRating hits atBats
            | avg <= 0.200 = "Terrible Batting Average"
            | avg <= 0.250 = "Average Player"
            | avg <= 0.280 = "Your doing pretty good"
            | otherwise = "You're a Superstar"
            where avg = hits / atBats

    putStrLn $ "batAvgRating 1 10 = " ++ show (batAvgRating 1 10)
    putStrLn $ "batAvgRating 5 6 = " ++ show (batAvgRating 5 6)

    -- We can use lists, head:tail, etc...!
    let getListItems :: [Int] -> String
        getListItems [] = "Your list is empty"
        getListItems (x:[]) = "Your list contains " ++ show x
        getListItems (x:y:[]) = "Your list contains " ++ show x ++ " and " ++ show y
        getListItems (x:xs) = "The first item is " ++ show x ++ " and the rest are " ++ show xs

    putStrLn $ "getListItems [] = " ++ show (getListItems [])
    putStrLn $ "getListItems [1] = " ++ show (getListItems [1])
    putStrLn $ "getListItems [1,2] = " ++ show (getListItems [1,2])
    putStrLn $ "getListItems [1,2,3] = " ++ show (getListItems [1,2,3])
    putStrLn $ "getListItems [1,2,3,4] = " ++ show (getListItems [1,2,3,4])

    -- We can also get values with an As pattern
    let getFirstItem :: String -> String
        getFirstItem [] = "Empty String"
        getFirstItem all@(x:xs) = "The first letter in " ++ all ++ " is " ++ [x]

    putStrLn $ "getFirstItem \"\" = " ++ show (getFirstItem "")
    putStrLn $ "getFirstItem \"Fooo\" = " ++ show (getFirstItem "Fooo")

    putStrLn "-----------------"

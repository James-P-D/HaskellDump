module CustomTypes where

-- You can store multiple values sort of like a struct to create custom types
data Customer = Customer String String Int Double
    deriving Show

-- We can define a type with all possible values
data RPS = Rock | Paper | Scissors

-- We could define 2 versions of a type
-- First 2 floats are center coordinates and then radius for Circle
-- First 2 floats are for upper left hand corner and bottom right hand corner
-- for the Rectangle
data Shape = Circle Float Float Float | Rectangle Float Float Float Float
    deriving (Show)

custom_type_examples = do
    putStrLn ""
    putStrLn "custom_type_examples"
    putStrLn ""

    let bobSmith :: Customer
        bobSmith = Customer "Bob" "Smith" 38 12.34

    let getCustomerAge :: Customer -> Int
        getCustomerAge (Customer _ _ a _) = a

    putStrLn $ "getCustomerAge bobSmith = " ++ show (getCustomerAge bobSmith)

    let playRPS :: RPS -> RPS -> String
        playRPS Paper Rock = "Paper wins!"
        playRPS Rock Scissors = "Rock wins!"
        playRPS Scissors Paper = "Scissors wins!"
        playRPS _ _ = "Draw!"

    putStrLn $ "playRPS Rock Scissors = " ++ show (playRPS Rock Scissors)
    putStrLn $ "playRPS Paper Paper = " ++ show (playRPS Paper Paper)

    -- Create a function to calculate area of shapes
    let area :: Shape -> Float
        area (Circle _ _ r) = pi * r ^ 2
        area (Rectangle x y x2 y2) = (abs (x2 - x)) * (abs (y2 -y))

    -- Get area of shapes
    let areaOfCircle = area (Circle 50 60 20)
    let areaOfRectangle = area $ Rectangle 10 10 100 100

    putStrLn $ "areaOfCircle = " ++ show areaOfCircle
    putStrLn $ "areaOfRectangle = " ++ show areaOfRectangle

    putStrLn "-----------------"

module Enums where

-- Note we have to declare this up here, not in enum_examples
data CakeType = Fruit | Chocolate | Vegan | Vegetarian deriving Show

enum_examples = do
    putStrLn ""
    putStrLn "enum_examples"
    putStrLn ""

    let cake1 = Chocolate
    let cake2 :: CakeType
        cake2 = Vegan

    let displayCake :: CakeType -> String
        displayCake Chocolate = "Unhealthy chocolate"
        displayCake Fruit = "Healthy fruit"
        displayCake _ = "Something hipster!"

    putStrLn $ "displayCake cake1 = " ++ show (displayCake cake1)
    putStrLn $ "displayCake cake2 = " ++ show (displayCake cake2)

    putStrLn "-----------------"

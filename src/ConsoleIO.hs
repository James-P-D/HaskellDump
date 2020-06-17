module ConsoleIO where
import Text.Printf

console_io_examples = do
    putStrLn ""
    putStrLn "console_io_examples"
    putStrLn ""

    -- We can read a string
    putStrLn "What's your name: "
    name <- getLine
    putStrLn ("Hello " ++ name)

    -- We can read a string and convert it to an integer
    putStrLn "What's your age: "
    age <- getLine
    let ageInt = (read age :: Int)
    putStrLn ("You are " ++ show ageInt ++ " years old")

    let someFloat = 12.34567 :: Float
    printf "someFloat = %f\n" someFloat
    printf "someFloat = %.2f\n" someFloat

    putStrLn "-----------------"

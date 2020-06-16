-- To open the termal hit make sure 'platformio-ide-terminal' package is installed
-- and then hit CTRL+~
--
-- to compile run:
-- ghc .\main.hs
--
-- or to get the REPL:
-- ghci
import Data.List
import System.IO
import DataTypes
import Maths
import Lists

main = do
    --putStrLn "What's your name: "
    --name <- getLine
    --putStrLn ("Hello " ++ name)

    let _data_type_examples = data_type_examples
    _data_type_examples

    let _maths_examples = maths_examples
    _maths_examples

    let _list_examples = list_examples
    _list_examples

    putStrLn "Compete!"

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
import Tuples
import ConsoleIO
import Functions
import HigherOrderFunctions
import Lambdas
import Conditionals

main = do
    let _data_type_examples = data_type_examples
    _data_type_examples

    let _maths_examples = maths_examples
    _maths_examples

    let _list_examples = list_examples
    _list_examples

    let _tuple_examples = tuple_examples
    _tuple_examples

    --let _console_io_examples = console_io_examples
    --_console_io_examples

    let _function_examples = function_examples
    _function_examples

    let _higher_order_function_examples = higher_order_function_examples
    _higher_order_function_examples

    let _lambda_examples = lambda_examples
    _lambda_examples

    let _conditional_examples = conditional_examples
    _conditional_examples
    
    putStrLn "Compete!"

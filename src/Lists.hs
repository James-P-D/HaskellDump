module Lists where

list_examples = do
    putStrLn ""
    putStrLn "list_examples"
    putStrLn ""

    -- Lists are singly linked and you can only add to the front of it

    -- Lists store many elements OF THE SAME TYPE
    -- I.E. This will cause an error!
    --let randomList = [99, 3.1415, "some String", 'x', True]

    -- Lists store many elements of the same type
    let primeNumbers = [3, 5, 7, 11]
    putStrLn $ "primeNumbers = " ++ show primeNumbers

    -- Concatenate lists (Can be slow if your using a large list)
    let morePrimes = primeNumbers ++ [13, 17, 19, 23, 29]
    putStrLn $ "morePrimes = " ++ show morePrimes

    -- You can use the cons (':') operator to construct a list
    let favNums = 2 : 7 : 21 : 66 : []
    putStrLn $ "favNums = " ++ show favNums

    -- Cons is useful for adding a single item to the front of a list
    let morePrimes2 = 2 : morePrimes
    putStrLn $ "morePrimes2 = " ++ show morePrimes2

    -- If we want to add to the end of a list then concatonate
    let evenMorePrimes = morePrimes2 ++ [31]
    putStrLn $ "evenMorePrimes = " ++ show evenMorePrimes




    -- You can make a list of lists
    let multList = [[3,5,7],[11,13,17]]
    putStrLn $ "multList = " ++ show multList

    -- Get number of elements in the list
    let lenPrime = length morePrimes2
    putStrLn $ "length morePrimes2 = " ++ show lenPrime

    -- Reverse the list
    let revPrime = reverse morePrimes2
    putStrLn $ "reverse morePrimes2 = " ++ show revPrime

    -- return True if list is empty
    let isListEmpty = null morePrimes2
    putStrLn $ "null morePrimes2 = " ++ show isListEmpty

    -- Get the number in index X
    let zerothPrime = morePrimes2 !! 0
    putStrLn $ "morePrimes2 !! 0 = " ++ show zerothPrime
    let fifthPrime = morePrimes2 !! 5
    putStrLn $ "morePrimes2 !! 5 = " ++ show fifthPrime


    putStrLn "-----------------"

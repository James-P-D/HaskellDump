module Lists where

import Data.List

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

    -- Gets the 1st value in a list
    let firstPrime = head morePrimes2
    putStrLn $ "head morePrimes2 = " ++ show firstPrime

    -- Gets the last value
    let lastPrime = last morePrimes2
    putStrLn $ "last morePrimes2 = " ++ show lastPrime

    -- Gets everything but the first value
    let primeTail = tail morePrimes2
    putStrLn $ "tail morePrimes2 = " ++ show primeTail

    -- Gets everything but the last value
    let primeInit = init morePrimes2
    putStrLn $ "init morePrimes2 = " ++ show primeInit

    -- Get specified number of elements from the front of a list
    let first3Primes = take 3 morePrimes2
    putStrLn $ "take 3 morePrimes2 = " ++ show first3Primes

    -- Return values left after removing specified values
    let removedPrimes = drop 3 morePrimes2
    putStrLn $ "drop 3 morePrimes2 = " ++ show removedPrimes

    -- Check if value is in list (infix and prefix)
    let is7InList = 7 `elem` morePrimes2
    putStrLn $ "7 `elem` morePrimes2 = " ++ show is7InList
    let is7InListAgain = elem 7 morePrimes2
    putStrLn $ "elem 7 morePrimes2 = " ++ show is7InListAgain

    -- Get max value
    let maxPrime = maximum morePrimes2
    putStrLn $ "maximum morePrimes2 = " ++ show maxPrime

    -- Get minimum value
    let minPrime = minimum morePrimes2
    putStrLn $ "minimum morePrimes2 = " ++ show minPrime

    -- Sum values in list
    let sumPrimes = sum morePrimes2
    putStrLn $ "sum morePrimes2 = " ++ show sumPrimes

    -- Get product of values in list (Value all can evenly divide by)
    let newList = [2,3,5]
    putStrLn $ "newList = " ++ show newList
    let prodPrimes = product newList
    putStrLn $ "product newList = " ++ show prodPrimes

    -- Create list from 0 to 10
    let zeroToTen = [0..10]
    putStrLn $ "[0..10] = " ++ show zeroToTen

    -- Create list of evens by defining the step between the first 2 values
    let evenList = [2,4..20]
    putStrLn $ "[2,4..20] = " ++ show evenList

    -- You can use letters as well
    let letterList = ['A','C'..'Z']
    putStrLn $ "['A','C'..'Z'] = " ++ show letterList

    -- You can generate an infinite list and Haskell will only generate what you
    -- need
    let infinPow10 = [10,20..]
    -- Don't print it! Unsurprisingly it will never end!
    --putStrLn $ "[10,20..] = " ++ show infinPow10
    -- ..Instead just display the first 10 items
    putStrLn $ "take 10 [10,20..] = " ++ show (take 10 infinPow10)

    -- repeat repeats a value a defined number of times
    let many2s = take 10 (repeat 2)
    putStrLn $ "take 10 (repeat 2) = " ++ show many2s

    -- replicate generates a value a specified number of times
    let many3s = replicate 10 3
    putStrLn $ "replicate 10 3 = " ++ show many3s

    -- cycle replicates the values in a list indefinitely
    let cycleList = take 10 (cycle [1,2,3,4,5])
    putStrLn $ "take 10 (cycle [1,2,3,4,5]) = " ++ show cycleList

    -- You could perform operations on all values in a list
    -- Cycle through the list storing each value in x which is multiplied by 2 and
    -- then stored in a new list
    let listTimes2 = [x * 2 | x <- [1..10]]
    putStrLn $ "[x * 2 | x <- [1..10]] = " ++ show listTimes2

    -- We can filter the results with conditions
    let listTimes3 = [x * 3 | x <- [1..20], x*3 <= 50]
    putStrLn $ "[x * 3 | x <- [1..20], x*3 <= 50] = " ++ show listTimes3

    -- Return all values that are divisible by 13 and 9
    let divisBy9N13 = [x | x <- [1..500], x `mod` 13 == 0, x `mod` 9 == 0]
    putStrLn $ "[x | x <- [1..500], x `mod` 13 == 0, x `mod` 9 == 0] = " ++ show divisBy9N13

    -- Sort a list
    let sortedList = sort [9,1,8,3,4,7,6]
    --putStrLn $ "sort [9,1,8,3,4,7,6] = " ++ show sortedList

    -- zipwith can combine lists using a function
    let sumOfLists = zipWith (+) [1,2,3,4,5] [6,7,8,9,10]
    putStrLn $ "zipWith (+) [1,2,3,4,5] [6,7,8,9,10] = " ++ show sumOfLists

    -- Filter returns a list of items that match a condition
    let listBiggerThen5 = filter (>5) sumOfLists
    putStrLn $ "filter (>5) sumOfLists = " ++ show listBiggerThen5

    -- takeWhile returns list items until the condition is false
    let evensUpTo20 = takeWhile (<=20) [2,4..]
    putStrLn $ "takeWhile (<=20) [2,4..] = " ++ show evensUpTo20

    -- foldl applies the operation on each item of a list
    -- foldr applies these operations from the right
    let multOfList = foldl (*) 1 [2,3,4,5]
    putStrLn $ "foldl (*) 1 [2,3,4,5] = " ++ show multOfList

    putStrLn "-----------------"

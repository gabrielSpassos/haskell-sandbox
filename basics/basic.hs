main = do 
    putStrLn "Basic POC"
    putStrLn ("Factorial 4: " ++ show (factorial 4))
    putStrLn ("And sample: " ++ show Main.and)
    putStrLn ("Or sample: " ++ show Main.or)
    putStrLn ("Not sample: " ++ show Main.negate)
    putStrLn ("Equals sample: " ++ show equals)
    putStrLn ("Not Equals sample: " ++ show notEquals)
    putStrLn ("5 + 4.0: " ++ show add)
    putStrLn ("Successor of 99: " ++ show (successor 99))
    putStrLn ("Min between 3.2 and 3.1: " ++ show (minimal 3.2 3.1))
    putStrLn ("Max between 3.2 and 3.1: " ++ show (customMax 3.2 3.1))
    putStrLn ("Custom Add 3.2 and 3.1: " ++ show (customAdd 3.2 3.1))
    listFunctions
    rangeFunctions

-- create function
factorial 0 = 1
factorial n = n * factorial (n - 1)

doubleMe x = x + x
doubleUs x y = doubleMe x + doubleMe y

-- booleans
and = True && False
or = False || True
negate = not False

-- equality 
equals = 7 == 8
notEquals = 7 /= 8

-- math operations
add = 5 + 4.0
successor n = succ n
minimal x y = min x y
customMax x y = max x y
customAdd x y = (minimal x y) + (customMax x y) + 1

-- if expression, must have else
doubleIfSmallerThanTen x = if x > 10
                            then x
                            else x * 2

-- list
numbers = [1,2,3,4]

listFunctions = do
    -- will add the right list on end of left list
    putStrLn ("Add on end of list:" ++ show (numbers ++ [9,10,11,12,3]))
    -- will add the left list on start of right list
    putStrLn ("Add on start of list:" ++ show (['H', 'E']:["LLO"]))
    -- get item from list by index
    putStrLn ("Numbers: " ++ show numbers ++ " numbers[1]: " ++ show (numbers !! 1))
    putStrLn ("Numbers first element: " ++ show (head numbers))
    putStrLn ("Numbers last element: " ++ show (last numbers))
    putStrLn ("Numbers without first element: " ++ show (tail numbers))
    putStrLn ("Numbers without last element: " ++ show (init numbers))
    putStrLn ("Numbers size: " ++ show (length numbers))
    putStrLn ("Is numbers empty? " ++ show (null numbers) ++ ". Is [] empty? " ++ show (null []))
    putStrLn ("Reverse numbers: " ++ show (reverse numbers))
    putStrLn ("Take first 3 numbers: " ++ show (take 3 numbers))
    putStrLn ("Take first 5 numbers: " ++ show (take 5 numbers))
    putStrLn ("Take first 0 numbers: " ++ show (take 0 numbers))
    putStrLn ("Drop first 3 numbers: " ++ show (drop 3 numbers))
    putStrLn ("Drop first 5 numbers: " ++ show (drop 5 numbers))
    putStrLn ("Drop first 0 numbers: " ++ show (drop 0 numbers))
    putStrLn ("Min of numbers: " ++ show (minimum numbers))
    putStrLn ("Max of numbers: " ++ show (maximum numbers))
    putStrLn ("Sum numbers: " ++ show (sum numbers))
    putStrLn ("Multiply numbers: " ++ show (product numbers))
    putStrLn ("Check if 3 is on numbers list: " ++ show (3 `elem` numbers))
    putStrLn ("Check if 7 is on numbers list: " ++ show (7 `elem` numbers))

rangeFunctions = do
    putStrLn ("Numbers sequence: " ++ show [1..20])
    putStrLn ("Alphabet sequence: " ++ show ['a'..'z'])
    putStrLn ("Letters sequence: " ++ show ['L'..'Z'])
    putStrLn ("Even numbers sequence: " ++ show [2,4..20])
    putStrLn ("Numbers sequence 3 by 3: " ++ show [0,3..20])
    putStrLn ("Reverse numbers sequence:" ++ show [20,19..1])
    putStrLn ("Take 12 first responses from infinite list:" ++ show (take 12 [13,26..]))
    putStrLn ("Create cycle: " ++ show (take 9 (cycle [1, 2, 3])))
    putStrLn ("Repeat element: " ++ show (take 4 (repeat 0)))
    putStrLn ("Replicate element: " ++ show (replicate 4 0))

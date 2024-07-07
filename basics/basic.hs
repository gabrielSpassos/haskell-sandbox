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
    putStrLn ("Max between 3.2 and 3.1: " ++ show (Main.maximum 3.2 3.1))
    putStrLn ("Custom Add 3.2 and 3.1: " ++ show (customAdd 3.2 3.1))
    putStrLn ("Add on end of list:" ++ show addList)
    putStrLn ("Add on start of list:" ++ show addStartList)
    putStrLn ("Numbers: " ++ show numbers ++ " numbers[1]: " ++ show secondItemFromNumbers)
    putStrLn ("Numbers first element: " ++ show firstElement)
    putStrLn ("Numbers last element: " ++ show lastElement)
    putStrLn ("Numbers without first element: " ++ show listWithoutFirst)
    putStrLn ("Numbers without last element: " ++ show listWithoutLast)

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
maximum x y = max x y
customAdd x y = (minimal x y) + (Main.maximum x y) + 1

-- if expression, must have else
doubleIfSmallerThanTen x = if x > 10
                            then x
                            else x * 2

-- list
numbers = [1,2,3,4]
-- will add the right list on end of left list
addList = numbers ++ [9,10,11,12,3]
-- will add the left list on start of right list
addStartList = ['H', 'E']:["LLO"]
-- get item from list by index
secondItemFromNumbers = numbers !! 1
firstElement = head numbers
lastElement = last numbers
listWithoutFirst = tail numbers
listWithoutLast = init numbers
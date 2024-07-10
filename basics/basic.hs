main = do
    putStrLn "Basic POC"
    putStrLn ("Factorial 4: " ++ show (factorial 4))
    putStrLn ("And sample: " ++ show Main.and)
    putStrLn ("Or sample: " ++ show Main.or)
    putStrLn ("Not sample: " ++ show Main.negate)
    equalityFuntions
    putStrLn ("5 + 4.0: " ++ show add)
    putStrLn ("Successor of 99: " ++ show (successor 99))
    putStrLn ("Min between 3.2 and 3.1: " ++ show (minimal 3.2 3.1))
    putStrLn ("Max between 3.2 and 3.1: " ++ show (customMax 3.2 3.1))
    putStrLn ("Custom Add 3.2 and 3.1: " ++ show (customAdd 3.2 3.1))
    listFunctions
    rangeFunctions
    listComprehensionFunctions
    tupleFunctions
    patternMatchingFunctions
    guardsFunctions
    whereFunctions

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
equalityFuntions = do
    putStrLn ("7 == 7, is: " ++ show (7 == 7))
    putStrLn ("7 == 8, is: " ++ show (7 == 8))
    putStrLn ("7 != 7, is: " ++ show (7 /= 7))
    putStrLn ("7 != 8, is: " ++ show (7 /= 8))
    putStrLn ("Compare strings Abrakadabra and Zebra: " ++ show ("Abrakadabra" `compare` "Zebra"))
    putStrLn ("Compare numbers 5 and 3: " ++ show (5 `compare` 3))
    putStrLn ("Compare strings Zebra and Zebra: " ++ show ("Zebra" `compare` "Zebra"))

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
    putStrLn "** Lists **"
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
    putStrLn "** Ranges **"
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

xxs = [[1,3,5,2,3,1,2,4,5],[1,2,3,4,5,6,7,8,9],[1,2,4,2,1,6,3,1,3,2,3,6]]
listComprehensionFunctions = do
    putStrLn "** List Comprehension **"
    putStrLn ("Get double of numbers: " ++ show ([x*2 | x <- [1..10]]))
    putStrLn ("Get double of numbers, if double >= 14: " ++ show ([x*2 | x <- [1..10], x*2 >= 14]))
    putStrLn ("Numbers that the X/7 the remainder == 3: " ++ show ([x | x <- [50..100], x `mod` 7 == 3]))
    putStrLn ("Several predicates: " ++ show ([x | x <- [10..20], x /= 13, x /= 17, x/= 15 ]))
    putStrLn ("Function on list comprehension:" ++ show ([if x < 10 then "BOOM!" else "BANG!" | x <- [7..13], odd x]))
    putStrLn ("Two list comprehension: " ++ show ([x + y | x <- [2,4..10], y <- [1,3..10], x + y > 10]))
    putStrLn ("Nested lists: " ++ show ([[x | x <- xs, even x] | xs <- xxs]))

tupleFunctions = do
    putStrLn "** Tuples **"
    putStrLn ("First item of pair: " ++ show (fst (8,11)))
    putStrLn ("Second item of pair: " ++ show (snd ("FOO",True)))
    putStrLn ("Combine lists into pairs: " ++ show (zip [1..5] ["one", "two", "three", "four", "five"]))
    putStrLn ("Combine different size lists into pairs: " ++ show (zip [1..10] ["Hello", "World", "!"]))
    putStrLn ("Combine infinite and finite lists into pairs: " ++ show (zip [100..] ["apple", "bannana", "grape"]))
    putStrLn ("Triangle with perimeter is 24:" ++ show ([(a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c == 24]))

-- pattern matching
lucky :: (Integral x) => x -> String
lucky 7 = "LUCKY NUMBER!"
lucky x = "Not so lucky"

addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

firstOfTriple :: (a, b, c) -> a
firstOfTriple (x, _, _) = x

secondOfTriple :: (a, b, c) -> b
secondOfTriple (_, y, _) = y

thirdOfTriple :: (a, b, c) -> c
thirdOfTriple (_, _, z) = z

patternMatchingFunctions = do
    putStrLn "** Pattern Matching **"
    putStrLn ("Is 9 lucky: " ++ lucky 9)
    putStrLn ("Is 7 lucky: " ++ lucky 7)
    putStrLn ("Add vectors (1, 2) (3, 4): " ++ show (addVectors (1, 2) (3, 4)))
    putStrLn ("First of triple (1, 2, 3): " ++ show (firstOfTriple (1, 2, 3)))
    putStrLn ("Second of triple (1, 2, 3): " ++ show (secondOfTriple (1, 2, 3)))
    putStrLn ("Third of triple (1, 2, 3): " ++ show (thirdOfTriple (1, 2, 3)))

-- guards
imcDisplay :: (RealFloat a) => a -> String
imcDisplay imc
    | imc <= 18.5 = "You are underweight!"
    | imc <= 25 = "You are on okay weight!"
    | imc <= 30 = "You are overweight!"
    | otherwise = "You are obese!"

calculateImc :: (RealFloat a) => a -> a -> a
calculateImc weight height = weight / height ^ 2

guardsFunctions = do
    putStrLn "** Guards **"
    putStrLn ("My weight 85, my height 1.83. My IMC: " ++ show (calculateImc 85 1.83) ++ " IMC result: " ++ imcDisplay (calculateImc 85 1.83))

-- where
imcWithWhere :: (RealFloat a) => a -> a -> String 
imcWithWhere weight height
    | imc <= skinny = "You are underweight!"
    | imc <= normal = "You are on okay weight!"
    | imc <= fat = "You are overweight!"
    | otherwise = "You are obese!"
    where imc = weight / height ^ 2
          skinny = 18.5
          normal = 25
          fat = 30

initials :: String -> String -> String
initials firstName lastName = [f] ++ "." ++ [l] ++ "."
    where (f:_) = firstName
          (l:_) = lastName

whereFunctions = do 
    putStrLn "** Where **"
    putStrLn ("My weight 85, my height 1.83. My IMC: " ++ imcWithWhere 85 1.83)
    putStrLn ("My Name is Gabriel Passos, my initials are: " ++ initials "Gabriel" "Passos")

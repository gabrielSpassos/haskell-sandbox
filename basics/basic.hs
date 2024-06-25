main = do 
    putStrLn "Basic POC"
    putStrLn ("Factorial 4: " ++ show (factorial 4))
    putStrLn ("And sample: " ++ show Main.and)
    putStrLn ("Or sample: " ++ show Main.or)
    putStrLn ("Not sample: " ++ show Main.negate)
    putStrLn ("Equals sample: " ++ show equals)
    putStrLn ("Not Equals sample: " ++ show notEquals)

-- create function
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- booleans
and = True && False
or = False || True
negate = not False

-- equality 
equals = 7 == 8
notEquals = 7 /= 8

main = do 
    putStrLn "Basic POC"
    putStrLn ("Factorial 4: " ++ show (factorial 4))

-- create function
factorial 0 = 1
factorial n = n * factorial (n - 1)

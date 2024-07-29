import Debug.Trace

main :: IO ()
main = do
    putStrLn "Time Execution POC!"
    myFunction

myFunction :: IO ()
myFunction = do
    putStrLn "Counter from 10"
    print (counter 10)

-- counter :: (Integral value) => value -> Int
counter 0 = trace ("Counter: " ++ show 0) 0
counter value = trace ("Counter: " ++ show value) counter (value - 1)

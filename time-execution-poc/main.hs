import Debug.Trace
import Data.Time

main :: IO ()
main = do
    putStrLn "Time Execution POC!"
    timeFunction myFunction

myFunction :: IO ()
myFunction = do
    putStrLn "Counter from 10"
    print (counter 10)
    putStrLn "Function completed"

-- counter :: (Integral value) => value -> Int
counter 0 = trace ("Counter: " ++ show 0) 0
counter value = trace ("Counter: " ++ show value) counter (value - 1)


timeFunction :: IO () -> IO ()
timeFunction function = do
   startTime <- getCurrentTime
   function
   endTime <- getCurrentTime
   let diff = diffUTCTime endTime startTime
   putStrLn $ "Execution Time: " ++ show diff

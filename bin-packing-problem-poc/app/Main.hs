module Main where

import OnlineSolution ( nextFit )
import Data.Time ( diffUTCTime, getCurrentTime )

main :: IO ()
-- use do to multi instruction 
main = do 
    putStrLn "Bin Packing Problem POC!"
    timeFunction (nextFitTimeTracker [4, 8, 1, 4, 2, 1] 10)

timeFunction :: IO () -> IO ()
-- the do is to execute multiple operations
timeFunction function = do
    -- the symbol <- ("bind") is executing the function "getCurrentTime" and storing the output on the variable startTime
    startTime <- getCurrentTime
    function
    endTime <- getCurrentTime
    let diff = diffUTCTime endTime startTime
    putStrLn ("Execution Time: " ++ show diff)

nextFitTimeTracker :: [Int] -> Int -> IO ()
nextFitTimeTracker weights binCapacity  = do
    putStrLn ("Next Fit weights: " ++ show weights ++ " binCapacity: " ++ show binCapacity)
    putStrLn ("Necessary bins for above input: " ++ show (nextFit weights binCapacity))
    putStrLn "Next Fit completed"

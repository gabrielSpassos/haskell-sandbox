module Main where

import OnlineSolution ( nextFit )
import Data.Time ( diffUTCTime, getCurrentTime )

main :: IO ()
main = do 
    putStrLn "Bin Packing Problem POC!"
    timeFunction nextFitTimeTracker

nextFitTimeTracker :: IO ()
nextFitTimeTracker = do
    putStrLn "Next Fit weights: [4, 8, 1, 4, 2, 1] binCapacity: 10"
    putStrLn ("Necessary bins for above input: " ++ show (nextFit [4, 8, 1, 4, 2, 1] 10))
    putStrLn "Next Fit completed"

timeFunction :: IO () -> IO ()
-- the do is to execute multiple operations
timeFunction function = do
    -- the symbol <- is executing the function "getCurrentTime" and storing the output on the variable startTime
    startTime <- getCurrentTime
    function
    endTime <- getCurrentTime
    let diff = diffUTCTime endTime startTime
    putStrLn ("Execution Time: " ++ show diff)
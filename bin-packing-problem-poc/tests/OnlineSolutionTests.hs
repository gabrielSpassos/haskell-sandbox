module Main (main) where

import OnlineSolution ( nextFit )
import Test.HUnit
    ( assertEqual, runTestTT, Counts(failures), Test(..) )
import qualified System.Exit as Exit

testNextFitReturn3 :: Test
testNextFitReturn3 = TestCase (assertEqual "Should return 3" 3 (nextFit [4, 8, 1, 4, 2, 1] 10))

testNextFitReturn4 :: Test
testNextFitReturn4 = TestCase (assertEqual "Should return 4" 4 (nextFit [9, 8, 2, 2, 5, 4] 10))

testNextFitReturn5 :: Test
testNextFitReturn5 = TestCase (assertEqual "Should return 5" 5 (nextFit [2, 5, 4, 7, 1, 3, 8] 10))

tests :: Test
tests = TestList [
    TestLabel "testNextFitReturn3" testNextFitReturn3,
    TestLabel "testNextFitReturn4" testNextFitReturn4,
    TestLabel "testNextFitReturn5" testNextFitReturn5
    ]

main :: IO()
main = do
    result <- runTestTT tests
    if failures result > 0 then Exit.exitFailure else Exit.exitSuccess

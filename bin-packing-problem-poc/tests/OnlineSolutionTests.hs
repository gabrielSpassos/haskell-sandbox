module Main (main) where

import OnlineSolution
import Test.HUnit
import qualified System.Exit as Exit

testNextFixReturn3 :: Test
testNextFixReturn3 = TestCase (assertEqual "Should return 3" 3 (nextFit [4, 8, 1, 4, 2, 1] 10))

testNextFixReturn4 :: Test
testNextFixReturn4 = TestCase (assertEqual "Should return 4" 4 (nextFit [9, 8, 2, 2, 5, 4] 10))

testNextFixReturn5 :: Test
testNextFixReturn5 = TestCase (assertEqual "Should return 5" 5 (nextFit [2, 5, 4, 7, 1, 3, 8] 10))

tests :: Test
tests = TestList [
    TestLabel "testNextFixReturn3" testNextFixReturn3,
    TestLabel "testNextFixReturn4" testNextFixReturn4,
    TestLabel "testNextFixReturn5" testNextFixReturn5
    ]

main :: IO()
main = do 
    result <- runTestTT tests
    if failures result > 0 then Exit.exitFailure else Exit.exitSuccess

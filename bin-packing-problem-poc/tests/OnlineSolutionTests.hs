module Main (main) where

import Test.HUnit
import qualified System.Exit as Exit

import Modules.OnlineSolution as OnSolution

testNextFixReturn3 :: Test
testNextFixReturn3 = TestCase (assertEqual "Should return 3" 3 (nextFit [4,8,1,4,2,1] 10))

testNextFixReturn4 :: Test
testNextFixReturn4 = TestCase (assertEqual "Should return 4" 4 (nextFit [9,8,2,2,5,4] 10))

tests :: Test
tests = TestList [TestLabel "test1" test1, TestLabel "test2" test2]

main :: IO()
main = do 
    result <- runTestTT tests
    if failures result > 0 then Exit.exitFailure else Exit.exitSuccess
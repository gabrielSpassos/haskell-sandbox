module Main where
import BasicSum
import Test.HUnit
import qualified System.Exit as Exit

test1 :: Test
test1 = TestCase (assertEqual "Should return 3" 3 (basicSum 1 2))

-- test1 :: Test
test2 = TestCase (assertEqual "Should return 5" 5 (basicSum 3 2))

tests :: Test
tests = TestList [TestLabel "test1" test1, TestLabel "test2" test2]

main :: IO()
main = do 
    result <- runTestTT tests
    if failures result > 0 then Exit.exitFailure else Exit.exitSuccess

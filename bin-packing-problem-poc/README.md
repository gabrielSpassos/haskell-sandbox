# Bin Packing Problem POC

> https://www.geeksforgeeks.org/bin-packing-problem-minimize-number-of-used-bins/

## Usage

1. Execute app
```bash
cabal run
```

Output
```
Bin Packing Problem POC!
Next Fit weights: [4, 8, 1, 4, 2, 1] binCapacity: 10
Necessary bins for above input: 3
Next Fit completed
Execution Time: 0.000031s
```

2. Execute tests
```bash
cabal test
```

Output
```
Running 1 test suites...
Test suite unit-tests: RUNNING...
Test suite unit-tests: PASS
Test suite logged to:
/Users/gpassos/Documents/Workspace/haskell-sandbox/bin-packing-problem-poc/dist-newstyle/build/aarch64-osx/ghc-9.4.8/bin-packing-problem-poc-0.1.0.0/t/unit-tests/test/bin-packing-problem-poc-0.1.0.0-unit-tests.log
1 of 1 test suites (1 of 1 test cases) passed.
```

```
Test suite unit-tests: RUNNING...

Cases: 3  Tried: 0  Errors: 0  Failures: 0
Cases: 3  Tried: 1  Errors: 0  Failures: 0
Cases: 3  Tried: 2  Errors: 0  Failures: 0
                                          
Cases: 3  Tried: 3  Errors: 0  Failures: 0
Test suite unit-tests: PASS
Test suite logged to: /Users/gpassos/Documents/Workspace/haskell-sandbox/bin-packing-problem-poc/dist-newstyle/build/aarch64-osx/ghc-9.4.8/bin-packing-problem-poc-0.1.0.0/t/unit-tests/test/bin-packing-problem-poc-0.1.0.0-unit-tests.log
```
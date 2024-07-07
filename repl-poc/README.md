# Repl POC

1. Start repl 
```bash
ghci
```

2. Execute math operations
```haskell
ghci> 6 + 3^2 * 4
42
```

3. Take next 10 even number starting from 33
```haskell
ghci> take 10 (filter even [33..])
[34,36,38,40,42,44,46,48,50,52]
```

4. Take next 7 odd number starting from 33
```haskell
ghci> take 7 (filter odd [33..])
[33,35,37,39,41,43,45]
```

5. Sum last execution
```haskell
ghci> sum it
273
```

6. Negative numbers
```haskell
ghci> 5 * -3
<interactive>:3:1: error:
    Precedence parsing error
        cannot mix ‘*’ [infixl 7] and prefix `-' [infixl 6] in the same infix expression
```

7. Negative numbers fix
```haskell
ghci> 5 * (-3)
-15
```

8. Create variable on repl
```haskell
ghci> let lostNumbers = [4,8,15,16,23,42]
ghci> lostNumbers
[4,8,15,16,23,42]
```
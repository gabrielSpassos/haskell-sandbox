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
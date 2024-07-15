module Modules.OnlineSolution where

nextFit :: [Integer] -> Integer -> Integer
nextFit weights binCapacity = go weights binCapacity 0 binCapacity
  where
    go :: [Integer] -> Integer -> Integer -> Integer -> Integer
    go [] _ binsUsed _ = binsUsed + 1
    go (w:ws) currentBinRemaining binsUsed binCapacity
      | w > currentBinRemaining = go ws (binCapacity - w) (binsUsed + 1) binCapacity
      | otherwise = go ws (currentBinRemaining - w) binsUsed binCapacity

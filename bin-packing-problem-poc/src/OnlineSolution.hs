module OnlineSolution where

import Data.List (foldl')

--  When processing next item, check if it fits in the same bin as the last item. Use a new bin only if it does not.
nextFit :: [Integer] -> Integer -> Integer
nextFit weights binCapacity = go weights binCapacity 0 binCapacity
  where
    go [] _ bins _ = bins + 1
    go (weight:rest) binRemaining bins binCapacity
      | weight > binRemaining = go rest (binCapacity - weight) (bins + 1) binCapacity
      | otherwise             = go rest (binRemaining - weight) bins binCapacity

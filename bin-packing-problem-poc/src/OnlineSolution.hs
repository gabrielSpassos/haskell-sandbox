module OnlineSolution where

-- When processing next item, check if it fits in the same bin as the last item. Use a new bin only if it does not.
nextFit :: [Int] -> Int -> Int
nextFit weights binCapacity = nextFitHelper weights binCapacity binCapacity 0

-- Helper function with additional parameters to keep track of the remaining capacity and bin count
nextFitHelper :: [Int] -> Int -> Int -> Int -> Int
-- No weights left, add + 1 because start with 0 bins
nextFitHelper [] _ _ result = result + 1
-- (weight:remainingWeights) split only the head from the list
nextFitHelper (weight:remainingWeights) binCapacity binRemainingCapacity result
  | weight > binRemainingCapacity = nextFitHelper remainingWeights binCapacity (binCapacity - weight) (result + 1)
  | otherwise = nextFitHelper remainingWeights binCapacity (binRemainingCapacity - weight) result

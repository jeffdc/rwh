
-- #1
safe _ [] = Nothing
safe p xs = Just (p xs)

safeHead :: [a] -> Maybe a
safeHead xs = safe head xs 

safeTail :: [a] -> Maybe [a]
safeTail xs = safe tail xs

safeLast :: [a] -> Maybe a
safeLast xs = safe last xs

safeInit :: [a] -> Maybe [a]
safeInit xs = safe init xs

-- #2
-- split items in the input list where the predicate returns false
-- e.g. splitWith even [2,2,3,2,2,3,2] = [[2,2],[2,2],[2]]
splitWith :: (a -> Bool) -> [a] -> [[a]]
splitWith _ [] = []
splitWith p (x:xs) | not (p x) = splitWith p xs 
splitWith p xs = [takeWhile p xs] ++ splitWith p (dropWhile p xs)
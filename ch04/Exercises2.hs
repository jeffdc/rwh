import Data.Char (digitToInt)
import Data.List (foldl')

-- #1,2,3
asInt :: String -> Int
asInt [] = 0
asInt "-" = 0
asInt ('-':xs) = -(asInt xs)
asInt xs = foldl' step 0 xs
    where step acc x = acc * 10 + digitToInt x
    
-- #4 ??? does not compute!

-- #5,6 
myConcat :: [[a]] -> [a]
myConcat xs = foldr (++) [] xs

-- #7
recTakeWhile :: (a -> Bool) -> [a] -> [a]
recTakeWhile _ [] = []
recTakeWhile p (x:xs) = if p x
                        then x : recTakeWhile p xs
                        else []

foldTakeWhile :: (a -> Bool) -> [a] -> [a]
foldTakeWhile p xs = foldr step [] xs
    where step x ys 
            | p x = x : ys 
            | otherwise = []

-- # 8,9
-- xGroupBy :: (a -> a -> Bool) -> [a] -> [[a]]

-- #10
xany :: (a -> Bool) -> [a] -> Bool
xany p (x:xs) = foldl' step (p x) xs
    where step acc x = acc || p x

xcycle :: [a] -> [a]
xcycle [] = error "Empty List"
xcycle xs = xs ++ xcycle xs

xunlines :: [String] -> String
xunlines xs = foldl' step "" xs
    where step acc x = acc ++ x ++ "\n"

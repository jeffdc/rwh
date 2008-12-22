import Data.List
import Data.Ord

-- calculate the length of a list
listLen :: [a] -> Int
listLen [] = 0
listLen xs = 1 + listLen(tail xs)

-- calculate the mean of a list of doubles
-- recurses through the list summing the values and counting the elements
-- returning both numbers as a tuple that we then use to get the mean
-- it works but it seems kludgey.meanList :: [Double] -> Double
meanList :: [Double] -> Double
meanList [] = 0
meanList l = fst(inner l) / snd(inner l)
    where inner [] = (0,0)
          inner (x:xs) = (fst(inner xs) + x, snd(inner xs) + 1)

-- makes the list a palindrome
-- e.g., "jeff" becomes "jeffffej"
-- this seems to be a terribly inefficent, though elegant looking, solution
palindrome :: [a] -> [a]
palindrome [] = []
palindrome (x:xs) = [x] ++ palindrome xs ++ [x]

-- checks to see if the passed in list is palindromic 
-- based on the palindrome rule as defined above
isPalindrome [] = True
isPalindrome xs
    | length xs `mod` 2 == 0 = (head xs == last xs) && isPalindrome(init(tail xs))
isPalindrome _ = False

-- sort a list of lists by the length of each sublist
-- N.B. used imports above to do this
mySort :: [[a]] -> [[a]]
mySort xs = sortBy (comparing length) xs

-- Intersperse the delimiter between each sublist and return a single list
-- e.g. myIntersperse '*' ["a", "b", "cd", "e"] = "a*b*cd*e"
--myIntersperse :: a -> [[a]] -> [a]
--myIntersperse :: Char -> [[Char]] -> [Char]
-- hmmmm can not get the type defintion to work??
myIntersperse _ [] = []
myIntersperse _ (x:[]) = [x]
myIntersperse delim (x:y:xs) = myIntersperse delim ((x ++ [delim] ++ y):xs)


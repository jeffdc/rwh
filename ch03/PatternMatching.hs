
import Control.Exception

-- pattern match to provide a not "operator"
myNot True = False
myNot False = True

-- sum up the elements in a list
sumList (x:xs) = x + sumList xs
sumList [] = 0
-- 55 == sumList [1..10]

-- more complicated pattern match
complicated(True, a, x:xs, 5) = (a, xs)
-- ("hi", [2..10]) == complicated(True, "hi", [1..10], 5)
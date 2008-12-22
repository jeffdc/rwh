
data List a = Cons a (List a)
			| Nil
			deriving (Show)
			
fromList (x:xs) = Cons x (fromList xs)
fromList [] = Nil

toList (Cons x xs) = x : toList xs
toList _ = []
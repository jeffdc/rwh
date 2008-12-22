
-- aborts execution with an exception - too severe?
mySecond :: [a] -> a
mySecond xs = if null (tail xs)
			  then error "list too short"
			  else head (tail xs)

-- does not abort just returns Nothing and lets the caller deal with it			
safeSecond :: [a] -> Maybe a
safeSecond [] = Nothing
safeSecond xs = if null (tails xs)
			    then Nothing
				else Just (head (tail xs))
				
-- make it prettier
tidySecond :: [a] -> Maybe a
-- matches a List with at least 2 elements and extracts the 2nd as x
tidySecond (_:x:_) = Just x
tidySecond _ = Nothing
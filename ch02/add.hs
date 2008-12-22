add a b = a + b

-- a simple reimplementation of the standard drop function
myDrop n xs = if n <= 0 || null xs
			  then xs
			  else myDrop (n-1) (tail xs)

			
lastButOne xs = if length xs > 2
			    then head (drop (length(xs) - 2) xs)
				else 0 -- should throw an exception how to?
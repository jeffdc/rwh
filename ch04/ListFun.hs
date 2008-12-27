-- attempts at defining basic list functions
    
xlength :: [a] -> Int
xlength [] = 0
xlength x = 1 + xlength (tail x)

xnull :: [a] -> Bool
xnull [] = True
xnull _ = False

xhead :: [a] -> a
xhead [] = error "Empty list."
xhead (x:_) = x

xtail :: [a] -> [a]
xtail (_:xs) = xs
xtail [] = error "Empty list."

xlast :: [a] -> a
xlast [] = error "Empty list."
xlast [x] = x
xlast (_:xs) = xlast xs

xinit :: [a] -> [a]
xinit [] = error "Empty list."
xinit [x] = []
xinit (x:xs) = x : xinit xs

-- not sure how to name it x++ ??
append :: [a] -> [a] -> [a]
append [] ys = ys
append (x:xs) ys = x : (xs `append` ys)

--xconcat :: [[a]] -> [a]
-- ??

xreverse :: [a] -> [a]
xreverse [] = []
xreverse [x] = [x]
xreverse (x:xs) = xreverse(xs) ++ [x]

xand, xor :: [Bool] -> Bool
xand [] = True
xand [x] = x
xand (x:xs) = x && xand xs
xor [] = False
xor [x] = x
xor (x:xs) = x || xor xs

-- xall, xany :: (a -> Bool) -> [a] -> Bool

xtake :: Int -> [a] -> [a]
xtake _ [] = []
xtake n _ | n <= 0 = []
xtake n (x:xs) = x : take (n-1) xs

xdrop :: Int -> [a] -> [a]
xdrop _ [] = []
xdrop n xs | n <= 0 = xs
xdrop n (_:xs) = drop (n-1) xs


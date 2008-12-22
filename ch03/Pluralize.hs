-- pluralization extraodinalis
pluralise :: String -> [Int] -> [String]
pluralise word counts = map plural counts
    where plural :: Int -> String
          plural 0 = "no " ++ word ++ "s"
          plural 1 = "one " ++ word
          plural n = show n ++ " " ++ word ++ "s"

tenCats = pluralise "cat" [0..10]


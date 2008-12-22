
data Tree a = Node a (Tree a)(Tree a)
			| Empty
			deriving (Show)
			
simpleTree = Node "parent" 
				(Node "left" Empty Empty)
				(Node "right" Empty Empty)
				
data JTree a = JNode a (Maybe(JTree a))(Maybe(JTree a))
	deriving (Show)

jTree = JNode "parent" (Just (JNode "L" (Just (JNode "LL" Nothing Nothing)) Nothing))
	(Just (JNode "R" (Just (JNode "RL" Nothing Nothing)) Nothing))
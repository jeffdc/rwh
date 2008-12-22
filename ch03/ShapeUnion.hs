-- replacing a C union

-- once a Circle, always a Circle, never a Poly
-- once a Poly , always a Poly, never a Circle
-- with a C union this would not be possible

type Vector = (Double, Double)
data Shape = Circle Vector Double
			| Poly [Vector]
			

digits :: Int -> Int -> Int
digits x y 
	| digits1 x y == 8 = 1000000
	| digits1 x y == 7 = 100000
	| digits1 x y == 6 = 8000
	| digits1 x y == 5 = 300
	| digits1 x y == 4 = 20
	| digits1 x y == 3 = 5
	| digits1 x y == 2 = 1
	| otherwise = 0
digits1 :: Int -> Int -> Int;
digits1 0 0 = 0
digits1 x y = digits1 dx dy + if mx == my then 1 else 0
	where{ (dx, mx) = divMod x 10;
		  (dy, my) = divMod y 10}
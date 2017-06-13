cost :: Float->Float
cost seconds
	|(seconds == 0) = 0
	|(seconds <= 180) = 0.58
	|(seconds > 180) = (0.003 * (seconds - 180)) + 0.58
call :: (Int,Int,Int)->(Int,Int,Int)->Float
call (h1,m1,s1) (h2,m2,s2)
	|((( h2 - h1) == 0) && ((m2 - m1) == 0) && ((s2 - s1) == 0)) = 0
	| (h1 <= h2) = cost(fromIntegral (h2 * 3600 + m2 * 60 + s2) - fromIntegral(h1 * 3600 + m1 * 60 + s1))
	| otherwise = cost(fromIntegral(86400 -((h1 * 3600) +(m1 * 60) + s1) + ((h2 * 3600) + (m2 * 60) + s2)))
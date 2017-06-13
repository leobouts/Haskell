grade :: Int->Int->Int                           
grade a b
	| (a < 0 || a > 100) || (b < 0 || b > 20) = -1  {-Check for out of index values-}
	| (((((8 * a) `div` 10) + b) > 47) && (a <= 47))  = 47
	| ((((((8*a)`div`10) + b) > 47) && (a > 47)) && ((((8*a)`div`10) + b) < 50)) = 50
	| otherwise = (((8*a)`div`10) + b)
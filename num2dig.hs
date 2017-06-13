digit :: Integer->Integer
digit k
	|(k < 10) = k
	|(k >= 10) && ((k `mod` 10) /= 0) = (k `mod` 10) * digit(k `div` 10)
	|(k >= 10) && ((k `mod` 10) == 0) = digit(k `div` 10)
num2dig :: Integer->Integer
num2dig k 
	| (k < 10) = k
	| otherwise = num2dig (digit k)   
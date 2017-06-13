sum2017 :: Integer->Integer->Integer             
sum2017 m n = sum [(m+i)^n | i <- [m..n]] 
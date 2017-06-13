search :: Integer->Integer->Integer->Integer     
search a k m = head (list a k m)

list :: Integer->Integer->Integer->[Integer]
list a k m = [i | i <- [1..],(((i+a)^k) < ( m^i))]
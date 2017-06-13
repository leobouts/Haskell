fromTo :: Int->Int->[u]->[u]                         
fromTo from to xs = foldr (\(i, x) a -> if i >= from && i <= to then x:a else if i > to then [] else a) [] (zip [1..] xs)
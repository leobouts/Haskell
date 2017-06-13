update :: Int->[Int]->[Int]
update n []     = [n
update element list = addLastElement element (reverse (filter (\e -> e/=element) list

addLastElement::Int->[Int]->[Int]
addLastElement x y = reverse(x:y) 
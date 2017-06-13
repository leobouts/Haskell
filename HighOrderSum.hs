hosum :: (Int->Int)->(Int->Int)     
hosum f n = sum $ map f [-n' .. n']
  where n' = abs n
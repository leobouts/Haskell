import qualified Data.Set as Set
apply :: Ord u => [v->u]->[v]->[u]             
apply fs xs = Set.toAscList $ Set.fromList [f x | f <- fs, x <- xs]
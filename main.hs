import Data.List
import Debug.Trace

dist :: [a]  -> [[a]]
dist (x:[]) = [[x]]
dist (x:xc) = [[x]] ++ dist xc

subs :: Eq x => [x] -> [[[x]]]
subs [] = [[[]]]
subs x = map splitInSolutions $ nonEmptySubsequences x
  where
    nonEmptySubsequences =  tail . subsequences 
    splitInSolutions serie = map (\y -> (serie ++ head y)) $ subs rest
      where
        rest = (x \\ serie)
    



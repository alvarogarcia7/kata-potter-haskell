import Data.List
import Debug.Trace

dist :: [a]  -> [[a]]
dist (x:[]) = [[x]]
dist (x:xc) = [[x]] ++ dist xc

subs x = map splitInSolutions $ nonEmptySubsequences x
  where
    nonEmptySubsequences =  tail . subsequences 
    splitInSolutions serie = map (\r -> [serie, r]) $ nonEmptySubsequences rest
      where
        rest = (x \\ serie)
    



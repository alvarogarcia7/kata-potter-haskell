import Data.List

dist :: [a]  -> [[a]]
dist (x:[]) = [[x]]
dist (x:xc) = [[x]] ++ dist xc

subs x = map splitInSolutions $ nonEmptySubsequences x
  where
    nonEmptySubsequences =  tail . subsequences 
    splitInSolutions serie = [serie, rest]
      where
        rest = (x \\ serie)



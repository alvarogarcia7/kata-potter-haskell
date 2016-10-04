import Data.List

dist :: [a]  -> [[a]]
dist (x:[]) = [[x]]
dist (x:xc) = [[x]] ++ dist xc

subs x = map splitInSolutions $ tail $ subsequences x
  where
    splitInSolutions = (\bucket -> [bucket, (x \\ bucket)])



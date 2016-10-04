import Data.List

dist :: [a]  -> [[a]]
dist (x:[]) = [[x]]
dist (x:xc) = [[x]] ++ dist xc

subs x = map (\bucket -> [bucket, (x \\ bucket)]) $ tail $ subsequences x



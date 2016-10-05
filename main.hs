import Data.List
import Control.Monad

dist :: [a]  -> [[a]]
dist (x:[]) = [[x]]
dist (x:xc) = [[x]] ++ dist xc

splitIn :: Eq x => [x] -> [[[x]]]
splitIn orig = map (\s -> [s, orig \\ s]) nes
  where
    nes = nonEmptySequences orig

nonEmptySequences :: [x] -> [[x]]
nonEmptySequences [] = [[]]
nonEmptySequences x = sortBy len $ (tail . subsequences) x


len a b  | length a < length b = LT
         | length a == length b = EQ
         | otherwise = GT


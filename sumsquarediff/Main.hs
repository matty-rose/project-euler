main :: IO ()
main = print (sumsq - sqsum)
  where
    su = sum [1 .. 100]
    sqsum = sum $ map (\x -> x * x) [1 .. 100]
    sumsq = su * su

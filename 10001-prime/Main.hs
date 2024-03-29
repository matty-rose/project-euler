isPrime :: Int -> Bool
isPrime a = all (\x -> a `mod` x /= 0) [2 .. roota]
  where
    roota = floor $ sqrt $ fromIntegral a

main :: IO ()
main = print $ (!!) (filter isPrime [1 ..]) 10001

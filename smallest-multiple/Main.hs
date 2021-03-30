fulfil :: Integer -> Bool
fulfil a = all (\x -> a `mod` x == 0) [2 .. 19]

main :: IO ()
main = print $ head $ filter fulfil $ map (\x -> 20 * x) [1 .. 1000000000]

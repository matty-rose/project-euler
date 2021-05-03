isMultiple :: Integer -> Bool
isMultiple a
  | a `mod` 3 == 0 = True
  | a `mod` 5 == 0 = True
  | otherwise = False

main :: IO ()
main = print $ sum $ filter isMultiple [3 .. 999]

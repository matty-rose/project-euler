import Data.List

cartesianProduct :: [Integer] -> [Integer] -> [Integer]
cartesianProduct xs ys = [x * y | x <- xs, y <- ys]

isPalindrome :: Integer -> Bool
isPalindrome a
  | even lena = take d2 stra == reverse (drop d2 stra)
  | otherwise = take d3 stra == reverse (drop d3 stra)
  where
    stra = show a
    lena = length stra
    d2 = lena `div` 2
    d3 = lena `mod` 2 + 1

main :: IO ()
main =
  print $
  last $ filter isPalindrome $ sort $ cartesianProduct [100 .. 999] [100 .. 999]

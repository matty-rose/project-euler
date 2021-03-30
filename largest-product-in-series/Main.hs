import Data.Char

digitProduct :: String -> Integer
digitProduct s = toInteger $ foldl1 (*) (map digitToInt s)

substr :: Int -> String -> String
substr m str = take 13 (drop m str)

solve :: String -> Integer
solve s = maximum $ map (digitProduct . (`substr` s)) [0 .. lens - 13]
  where
    lens = length s

main :: IO ()
main = do
  contents <- readFile "largest-product-in-series/input.txt"
  print $ solve $ foldl1 (++) (words contents)

isPythag :: [Int] -> Bool
isPythag [x, y, z] = x * x + y * y == z * z

main :: IO ()
main =
  print $
  foldl1 (*) $
  head $
  filter (\x -> sum x == 1000) $
  filter
    isPythag
    [ [x, y, z]
    | x <- [1 .. 1000]
    , y <- [2 .. 1000]
    , x < y
    , z <- [3 .. 1000]
    , y < z
    ]

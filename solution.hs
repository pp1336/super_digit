import Data.Char

str2int [] = 0
str2int cs = foldl (\ a b -> a + (digitToInt b)) 0 cs

main = do
         s <- getLine
         let (x : y : _) = words s
         print (getS ((str2int x) * (read y)))
         
         
getS n
  | n < 10 = n
  | n <= 0 = error "negative n"
  | otherwise = getS (str2int(show n))
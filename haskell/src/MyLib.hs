module MyLib (sieveOfEratosthenes) where

sieveOfEratosthenes :: Integer -> [Integer]
sieveOfEratosthenes n
  | n < 2 = error "n is more than 2"
  | otherwise = sieve [2 .. n] n
  where
    sieve [] _ = []
    sieve (x : xs) n
      | x ^ 2 > n = x : xs
      | otherwise = x : sieve [y | y <- xs, y `mod` x /= 0] n

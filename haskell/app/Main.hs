module Main where

import MyLib (sieveOfEratosthenes)

main :: IO ()
main = do
  print $ sieveOfEratosthenes 100

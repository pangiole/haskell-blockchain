module Cryptography.Cipher (
    Cipher (..)
  ) 
where


class Cipher a where
  encode :: a -> a -> Maybe a
  --decode :: a -> a -> Maybe a

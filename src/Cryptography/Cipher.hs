module Cryptography.Cipher (
    Cipher (..)
  ) 
where


class Cipher a where
  encrypt :: a -> a -> Maybe a
  --decrypt :: a -> a -> Maybe a

module Cryptography.Cipher.Substitution (
    Substitution (..)
  )
where

import Cryptography.Cipher
import Data.List (elemIndex)

-- | The "substitution chiper" context is made of either clear messages, keys or chipered texts
data Substitution = 
    Clear String 
  | Key String
  | Chipered String
  deriving (Show, Eq)


alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
--   key = "DEFGHIJKLMNOPQRSTUVWXYZABC"

instance Cipher Substitution where
  encrypt (Clear msg) (Key key) = 
    let index = \el -> elemIndex el alphabet
        maybeIndeces = sequence $ map index msg
        pickFromKeyAt =  map (\index -> key !! index)
        text = fmap pickFromKeyAt maybeIndeces
    in (fmap Chipered text)
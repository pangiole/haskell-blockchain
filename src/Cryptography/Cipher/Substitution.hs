module Cryptography.Cipher.Substitution (
    Substitution (..)
  )
where

import Cryptography.Cipher
import Data.List (elemIndex)

-- | Substitution chiper
data Substitution = 
    Message String 
  | Key String
  | Chipered String
  deriving (Show, Eq)


alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
--   key = "DEFGHIJKLMNOPQRSTUVWXYZABC"

instance Cipher Substitution where
  encode (Message msg) (Key key) = 
    let index = \el -> elemIndex el alphabet
        maybeIndeces = sequence $ map index msg
        pickFromKeyAt =  map (\index -> key !! index)
        text = fmap pickFromKeyAt maybeIndeces
    in (fmap Chipered text)

import Test.Hspec
import Cryptography.Cipher
import Cryptography.Cipher.Substitution

main :: IO ()
main = hspec $ do
  describe "The Cryptography.Cipher.Substitution module" $ do
    it "should encode \"PAOLO\" as \"SDROR\" if the given key is \"DEFGHIJKLMNOPQRSTUVWXYZABC\"" $ do
      let actual = encode (Message "PAOLO") (Key "DEFGHIJKLMNOPQRSTUVWXYZABC")
      actual `shouldBe` (Just (Chipered "SDROR"))

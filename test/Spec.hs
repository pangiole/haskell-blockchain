
import Test.Hspec
import Cryptography.Cipher
import Cryptography.Cipher.Substitution

main :: IO ()
main = hspec $ do
  describe "The Cryptography.Cipher.Substitution module" $ do
    it "should encrypt \"PAOLO\" as \"SDROR\" if the given key is \"DEFGHIJKLMNOPQRSTUVWXYZABC\"" $ do
      let actual = encrypt (Clear "PAOLO") (Key "DEFGHIJKLMNOPQRSTUVWXYZABC")
      actual `shouldBe` (Just (Chipered "SDROR"))

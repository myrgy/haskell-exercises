import Test.Hspec

import qualified Rbook.NatSpec

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "rbook Nat" Rbook.NatSpec.spec

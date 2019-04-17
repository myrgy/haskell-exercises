module Rbook.NatSpec
        ( spec
        )
where

import           Test.Hspec
import           Rbook.Nat                      ( beside )

spec :: Spec
spec = do
        describe "beside" $ do
          it "beside" $ do
                beside 1 1 `shouldBe` False
                beside 3 1 `shouldBe` False
                beside 3 2 `shouldBe` True
                beside 1 5 `shouldBe` False
                beside 4 5 `shouldBe` True

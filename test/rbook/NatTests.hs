module NatTests (spec) where

import  Test.Hspec

spec::Spec
spec = hspec $ do
        describe "Nat" $ do
                describe "beside" $ do
                        beside 1 1 `shouldBe` False
                        beside 3 1 `shouldBe` True
                        beside 3 2 `shouldBe` True
                        beside 1 5 `shouldBe` False
                        beside 4 5 `shouldBe` True

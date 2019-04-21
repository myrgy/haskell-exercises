module Rbook.NatSpec
        ( spec
        )
where

import           Test.Hspec
import           Rbook.Nat

spec :: Spec
spec = do
        describe "Nat" $ do
                it "beside" $ do
                        beside 1 1 `shouldBe` False
                        beside 3 1 `shouldBe` False
                        beside 3 2 `shouldBe` True
                        beside 1 5 `shouldBe` False
                        beside 4 5 `shouldBe` True

                it "beside2" $ do
                        beside2 1 1 `shouldBe` False
                        beside2 1 2 `shouldBe` False
                        beside2 2 1 `shouldBe` False
                        beside2 1 3 `shouldBe` True
                        beside2 3 1 `shouldBe` True
                        beside2 43 1 `shouldBe` False
                        beside2 43 41 `shouldBe` True
                        beside2 41 43 `shouldBe` True

                it "pow" $ do
                        pow 1 1 `shouldBe` 1
                        pow 2 1 `shouldBe` 2
                        pow 2 3 `shouldBe` 8

                it "sum" $ do
                        ((4 :: Nat) + (5 :: Nat)) `shouldBe` (9 :: Nat)
                        ((1 :: Nat) + (1000 :: Nat)) `shouldBe` (1001 :: Nat)

                it "filter" $ do
                  let
                    p = \x -> x > 10
                    inList = [1, 2, 10, 11, 3, 15, -1]
                    outList = [11, 15]
                  (filter2 p inList) `shouldBe` (outList)
                  (filterT p inList) `shouldBe` (outList)

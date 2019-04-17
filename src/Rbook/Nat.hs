module Rbook.Nat where

data Nat = Zero | Succ Nat
  deriving (Show, Eq, Ord)

instance Num Nat where
        negate _ = error "negate is undefined for Num"

        (+) a Zero     = a
        (+) a (Succ b) = Succ (a + b)

        (*) a Zero     = Zero
        (*) a (Succ b) = a + (a * b)

        abs x = x
        signum Zero = Zero
        signum _    = Succ Zero

        fromInteger 0 = Zero
        fromInteger n = Succ (fromInteger (n - 1))

beside :: Nat -> Nat -> Bool
beside a b = a == Succ b || b == Succ a

beside2 :: Nat -> Nat -> Bool
beside2 a b = a /= b && (beside a (Succ b) || beside (Succ a) b)

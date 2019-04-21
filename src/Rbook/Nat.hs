module Rbook.Nat where

data Nat = Zero | Succ Nat
  deriving (Show, Eq, Ord)

instance Num Nat where
        negate _ = error "negate is undefined for Num"

        (+) a Zero     = a
        (+) a (Succ b) = Succ (if a > b then (a + b) else (b + a))

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

pow :: Nat -> Nat -> Nat
pow _ Zero     = Succ Zero
pow a (Succ b) = a * pow a b

sumNat :: Nat -> Nat -> Nat
sumNat a Zero     = a
sumNat a (Succ b) = Succ (sumNat a b)

filterT :: (a->Bool) -> [a] -> [a]
filterT p a =
  case a of
    [] -> []
    x:xs -> let rest = filterT p xs
                in if (p x)
                   then (x:rest)
                   else rest

compareT x y
  | x == y = EQ
  | x < y  = LT
  | x > y  = GT

mapT :: (a -> b) -> [a] -> [b]
mapT f [] = []
mapT f (x:xs) = f x : mapT f xs

filter2 :: (a->Bool) -> [a] -> [a]
filter2 p [] = []
filter2 p (x:xs) | p x = x : filter2 p xs
                 | otherwise = filter2 p xs

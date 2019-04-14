module Task01(myFirst) where

myFirst::[t]->t
myFirst [] = error "Can't call myFirst on empty list"
myFirst (x:_) = x

myLast::[t]->t
myLast [] = error "Can't call myLast on empty list"
myLast [x] = x
myLast (_:xs) = myLast xs

structure Equiv.{u, v} (A : Sort u) (B : Sort v) where
    f : A -> B
    g : B -> A
    left_inverse : forall (a : A), g (f a) = a
    right_inverse : forall (b : B), f (g b) = b

infixl:25 " ≃ " => Equiv

example {A : Type} {x y z : A} (p : x = y) (q : y = z) : x = z := by
  exact Eq.rec p q

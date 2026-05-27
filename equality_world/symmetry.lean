example {A : Type} {x y : A} (p : x = y) : y = x := by
  exact Eq.rec rfl p

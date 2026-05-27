example {A B : Type} {x y : A} (f : A → B) (p : x = y) : f x = f y := by
  exact Eq.rec rfl p

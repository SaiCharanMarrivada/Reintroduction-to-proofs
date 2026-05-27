example {A B : Type} {f g : A → B} (p : f = g) (a : A) : f a = g a := by
  exact Eq.rec rfl p

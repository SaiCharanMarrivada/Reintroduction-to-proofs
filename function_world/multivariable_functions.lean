example {A B C : Type} (a : A) (f : A → B → C) : B → C := by
  exact f a

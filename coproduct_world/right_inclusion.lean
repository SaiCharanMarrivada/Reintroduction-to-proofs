example {A B : Type} (b : B) : A ⊕ B := by
  exact Sum.inr b

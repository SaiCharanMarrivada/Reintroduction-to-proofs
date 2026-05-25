example {A B : Type} (a : A) : A ⊕ B := by
  exact Sum.inl a

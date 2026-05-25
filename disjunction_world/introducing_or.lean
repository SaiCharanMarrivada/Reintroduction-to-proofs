example {P Q : Prop} (p : P) (q : Q) : P ∨ Q := by
  exact Or.inl p
  -- exact Or.inr q

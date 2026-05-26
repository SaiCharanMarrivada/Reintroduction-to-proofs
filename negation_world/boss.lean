example {P : Prop} : P ∨ ¬ P → (¬ ¬ P → P) := by
  exact fun porp' not_not_p =>
    match porp' with
    | .inl p => p
    | .inr p' => (not_not_p p').elim

example {P Q : Prop} : P ∨ Q → Q ∨ P := by
  exact fun porq => match porq with
    | Or.inl p => Or.inr p
    | Or.inr q => Or.inl q

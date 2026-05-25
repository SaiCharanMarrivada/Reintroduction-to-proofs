example {P Q : Prop} : P ∧ Q → P ∨ Q := by
  exact fun ⟨p, q⟩ => Or.inl p

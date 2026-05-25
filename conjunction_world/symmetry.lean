example {P Q : Prop} : P ∧ Q → Q ∧ P := by
  /- exact fun ⟨p, q⟩ => ⟨q, p⟩ -/
  exact And.symm

example {P Q : Prop} : P ∧ Q ↔ Q ∧ P := by
  exact ⟨And.symm, And.symm⟩

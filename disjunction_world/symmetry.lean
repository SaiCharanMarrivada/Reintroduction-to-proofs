example {P Q : Prop} : P ∨ Q ↔ Q ∨ P := by
  exact ⟨Or.symm, Or.symm⟩

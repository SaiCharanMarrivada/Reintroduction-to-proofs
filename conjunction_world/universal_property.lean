example {P Q R : Prop} : (P → Q) ∧ (P → R) ↔ P → Q ∧ R := by
  exact ⟨
    fun ⟨ptoq, ptor⟩ p => ⟨ptoq p, ptor p⟩,
    fun h => ⟨fun p => (h p).1, fun p => (h p).2⟩
  ⟩

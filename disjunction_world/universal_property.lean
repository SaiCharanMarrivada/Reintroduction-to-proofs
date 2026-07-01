example {P Q R : Prop} : (P ∨ Q → R) ↔ (P → R) ∧ (Q → R) := by
  exact ⟨
    fun h => ⟨
      fun p => h (Or.inl p),
      fun q => h (Or.inr q)
    ⟩,
    fun ⟨ptor, qtor⟩ porq =>
      match porq with
      | .inl p => ptor p
      | .inr q => qtor q
  ⟩

example {P Q : Prop} : ¬ (P ∨ Q) ↔ ¬ P ∧ ¬ Q := by
  exact ⟨
    fun f => ⟨
      fun p => f (Or.inl p),
      fun q => f (Or.inr q)
    ⟩,
    fun ⟨p', q'⟩ porq =>
      match porq with
      | .inl p => (p' p).elim
      | .inr q => (q' q).elim
  ⟩

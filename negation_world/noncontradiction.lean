example {P : Prop} : ¬ (P ∧ ¬ P) := by
  exact (fun ⟨p, p'⟩ => p' p)

example : ∃ f: Bool → Bool → Bool, f true true = true ∧ f false true = true ∧ f true false = true ∧ f false false = false := by
  exact ⟨or, ⟨rfl, rfl, rfl, rfl⟩⟩

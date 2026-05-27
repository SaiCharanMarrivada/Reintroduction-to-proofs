example : ∃ f: Bool → Bool → Bool, f true true = true ∧ f false true = false ∧ f true false = false ∧ f false false = false := by
  exact ⟨and, ⟨rfl, rfl, rfl, rfl⟩⟩

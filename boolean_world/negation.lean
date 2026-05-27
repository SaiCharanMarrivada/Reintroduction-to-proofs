example : ∃ f : Bool → Bool, f true = false ∧ f false = true := by
  exact not
  exact ⟨rfl, rfl⟩

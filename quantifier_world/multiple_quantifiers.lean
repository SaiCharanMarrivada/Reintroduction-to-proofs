example {A : Type} : ∀ x : A, ∃ y : A, x = y := by
  exact fun a => ⟨a, rfl⟩

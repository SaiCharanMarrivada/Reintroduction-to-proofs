example {A B C : Type} : (A × B → C) ≃ (A → B → C) := by
  exact ⟨Function.curry, Function.uncurry, fun f => rfl, fun f => rfl⟩

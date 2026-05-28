example {A B C : Type} : (A → B → C) ≃ (B → A → C) := by
  exact ⟨Function.swap, Function.swap, fun _ => rfl, fun _ => rfl⟩

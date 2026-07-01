example {A B : Type} : (A × B) ≃ (B × A) := by
  exact ⟨Prod.swap, Prod.swap, fun _ => rfl, fun _ => rfl⟩

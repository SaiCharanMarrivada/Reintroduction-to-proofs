import equivalence_world.isomorphism

example {A B C : Type} : (A → B → C) ≃ (B → A → C) := by
  exact ⟨fun f a b => f b a, fun f b a => f a b, fun _ => rfl, fun _ => rfl⟩

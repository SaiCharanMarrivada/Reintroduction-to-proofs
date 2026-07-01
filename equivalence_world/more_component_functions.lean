import equivalence_world.isomorphism

example {A B C : Type} : (A ⊕ B → C) ≃ (A → C) × (B → C) := by
  exact ⟨
    fun f => ⟨fun a => f (.inl a), fun b => f (.inr b)⟩,
    fun ⟨atoc, btoc⟩ aorb =>
      match aorb with
      | .inl a => atoc a
      | .inr b => btoc b,
    fun f => funext fun aorb =>
      match aorb with
      | .inl a => rfl
      | .inr b => rfl,
    fun ⟨atoc, btoc⟩ => rfl
  ⟩

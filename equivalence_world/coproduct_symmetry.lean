import equivalence_world.isomorphism
example {A B : Type} : (A ⊕ B) ≃ (B ⊕ A) := by
  exact ⟨
    Sum.swap,
    Sum.swap,
    fun aorb => match aorb with
      | .inl a => rfl
      | .inr b => rfl,
    fun bora => match bora with
      | .inl b => rfl
      | .inr b => rfl
  ⟩

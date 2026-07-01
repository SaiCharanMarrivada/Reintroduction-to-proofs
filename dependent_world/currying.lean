import equivalence_world.isomorphism

example {A : Type} {B : A → Type} {C : (x : A) × B x → Type} : ((p : (x : A) × B x) → C p) ≃ ((x : A) → (y : B x) → C ⟨x, y⟩) := by
  exact ⟨
    fun f x y => f ⟨x, y⟩,
    fun f ⟨x, y⟩ => f x y,
    fun a => rfl,
    fun b => rfl
  ⟩

import equivalence_world.isomorphism

example {A : Type} {B : A → Type} (C : (x : A) → B x → Type) : ((x : A) → (y : B x) × C x y) ≃ ((s : (x : A) → B x) × ((x : A) → C x (s x))) := by
  exact ⟨
    fun f => ⟨fun a => (f a).1, fun a => (f a).2⟩,
    fun ⟨s, g⟩ x => ⟨s x, g x⟩,
    fun _ => rfl,
    fun _ => rfl
  ⟩

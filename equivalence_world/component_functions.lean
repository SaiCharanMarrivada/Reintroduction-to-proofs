import equivalence_world.isomorphism

example {X A B : Type} : (X → A × B) ≃ (X → A) × (X → B) := by
  exact ⟨
    fun f => (fun x => (f x).1, fun x => (f x).2),
    fun ⟨f1, f2⟩ => (fun x => ⟨f1 x, f2 x⟩),
    fun _ => rfl,
    fun _ => rfl
  ⟩

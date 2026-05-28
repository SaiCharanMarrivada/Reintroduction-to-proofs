example {A : Type} {B : A → Type} : ((x : A) × B x → A) × ((p : (x : A) × B x) → B p.1) := by
  exact ⟨fun ⟨x, bx⟩ => x, fun ⟨x, bx⟩ => bx⟩

example {A B : Type} (x : A ⊕ B) : (∃ a : A, x = Sum.inl a) ∨ (∃ b : B, x = Sum.inr b) := by
  exact match x with
    | .inl a => .inl ⟨a, rfl⟩
    | .inr b => .inr ⟨b, rfl⟩

example {A B C : Type} : (A ⊕ B → C) → (A → C) × (B → C) := by
  exact fun f => (f ∘ Sum.inl, f ∘ Sum.inr)

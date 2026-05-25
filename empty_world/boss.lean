example : (Empty ⊕ (Empty → Empty) → (Empty → Empty) × (Empty → Empty)) × ((Empty → Empty) × (Empty → Empty) → Empty ⊕ (Empty → Empty)) := by
  exact ⟨
    fun f => match f with
      | Sum.inl e => e.elim
      | Sum.inr etoe => (etoe, etoe),
    fun ⟨etoe, _⟩ => Sum.inr etoe
  ⟩

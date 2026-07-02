example {A B C : Type} : (A × (B ⊕ C) → (A × B) ⊕ (A × C)) × ((A × B) ⊕ (A × C) → A × (B ⊕ C)) := by
  exact (
    fun (a, borc) =>
      match borc with 
      | .inl b => .inl (a, b)
      | .inr c => .inr (a, c),
    fun ab_ac =>
      match ab_ac with
      | .inl (a, b) => (a, .inl b)
      | .inr (a, c) => (a, .inr c)
  ) 

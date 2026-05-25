example {A B C : Type} : (A × (B ⊕ C) → (A × B) ⊕ (A × C)) × ((A × B) ⊕ (A × C) → A × (B ⊕ C)) := by
  constructor
  intro a_borc
  let (a, borc) := a_borc
  rcases borc with (b | c)
  left; exact ⟨a, b⟩
  right; exact ⟨a, c⟩
  intro ab_or_ac
  rcases ab_or_ac with (ab | ac)
  let (a, b) := ab
  exact (a, Sum.inl b)
  let (a, c) := ac
  exact (a, Sum.inr c)

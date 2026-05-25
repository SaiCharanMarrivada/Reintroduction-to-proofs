example {P Q R S : Prop} : (P ∨ Q) ∧ (R ∨ S) ↔ (P ∧ R) ∨ (P ∧ S) ∨ (Q ∧ R) ∨ (Q ∧ S) := by
  exact ⟨
    fun f => by
      let ⟨porq, rors⟩ := f
      rcases porq with (p | q)
      . rcases rors with (r | s)
        . exact Or.inl ⟨p, r⟩
        . exact Or.inr (Or.inl ⟨p, s⟩)
      . rcases rors with (r | s)
        . exact Or.inr (Or.inr (Or.inl ⟨q, r⟩))
        . exact Or.inr (Or.inr (Or.inr ⟨q, s⟩)),
    fun f => by
      rcases f with (⟨p, r⟩ | ⟨p, s⟩ | ⟨q, r⟩ | ⟨q, s⟩)
      . exact ⟨Or.inl p, Or.inl r⟩
      . exact ⟨Or.inl p, Or.inr s⟩
      . exact ⟨Or.inr q, Or.inl r⟩
      . exact ⟨Or.inr q, Or.inr s⟩
  ⟩ 

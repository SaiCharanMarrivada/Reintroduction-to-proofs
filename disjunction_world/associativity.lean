example {P Q R : Prop} : (P ∨ Q) ∨ R ↔ P ∨ Q ∨ R := by
  exact ⟨
    fun porq_orr => by
      rcases porq_orr with ((p | q) | r)
      . exact Or.inl p
      . exact (Or.inr ∘ Or.inl) q
      . exact (Or.inr ∘ Or.inr) r,
    fun porqorr => by
      rcases porqorr with (p | q | r)
      . exact (Or.inl ∘ Or.inl) p
      . exact (Or.inl ∘ Or.inr) q
      . exact Or.inr r
  ⟩

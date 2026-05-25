example {P Q R : Prop} : P ∧ (Q ∨ R) ↔ (P ∧ Q) ∨ (P ∧ R) := by
  exact ⟨
    fun ⟨p, qorr⟩ => by
      rcases qorr with (q | r)
      . exact Or.inl ⟨p, q⟩
      . exact Or.inr ⟨p, r⟩,
    fun pq_or_qr => by
      rcases pq_or_qr with (⟨p, q⟩ | ⟨p, r⟩)
      . exact ⟨p, Or.inl q⟩
      . exact ⟨p, Or.inr r⟩
  ⟩

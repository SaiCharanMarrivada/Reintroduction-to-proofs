example {P Q R : Prop} : P ∧ (Q ∨ R) ↔ (P ∧ Q) ∨ (P ∧ R) := by
  exact ⟨
    fun ⟨p, qorr⟩ =>
      match qorr with
      | .inl q => .inl ⟨p, q⟩ 
      | .inr r => .inr ⟨p, r⟩,
    fun pq_or_qr =>
      match pq_or_qr with
      | .inl ⟨p, q⟩ => ⟨p, .inl q⟩
      | .inr ⟨p, r⟩ => ⟨p, .inr r⟩
  ⟩

example {P Q R : Prop} : (P ∧ Q) ∧ R ↔ P ∧ (Q ∧ R) := by
  exact ⟨fun ⟨⟨p, q⟩, r⟩ => ⟨p, q, r⟩, fun ⟨p, ⟨q, r⟩⟩ => ⟨⟨p, q⟩, r⟩⟩

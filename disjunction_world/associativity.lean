example {P Q R : Prop} : (P ∨ Q) ∨ R ↔ P ∨ Q ∨ R := by
  exact ⟨
    fun porq_orr =>
      match porq_orr with
      | .inl (.inl p) => .inl p
      | .inl (.inr q) => (.inr ∘ .inl) q
      | .inr r => (.inr ∘ .inr) r,
    fun porqorr =>
      match porqorr with
      | .inl p => (.inl ∘ .inl) p
      | .inr (.inl q) => (.inl ∘ .inr) q
      | .inr (.inr r) => .inr r
  ⟩

example {P Q R : Prop} : (P ∨ Q) ∨ R ↔ P ∨ Q ∨ R := by
  exact ⟨
    fun porq_orr =>
      match porq_orr with
      | .inl porq =>
        match porq with
        | .inl p => .inl p
        | .inr q => (.inr ∘ .inl) q
      | .inr r => (.inr ∘ .inr) r,
    fun porqorr =>
      match porqorr with
      | .inl p => (.inl ∘ .inl) p
      | .inr qorr =>
        match qorr with
        | .inl q => (.inl ∘ .inr) q
        | .inr r => .inr r
  ⟩

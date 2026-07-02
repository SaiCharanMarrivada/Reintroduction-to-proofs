example {P Q : Prop} : P ∨ Q → Q ∨ P := by
  exact fun porq => porq.elim (fun p => .inr p) (fun q => .inl q)

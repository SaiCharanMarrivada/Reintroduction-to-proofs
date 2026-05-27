example {P Q : Prop} : ¬ (P → Q) → P ∧ ¬ Q := by
  exact fun h => match Classical.em P with
    | .inl p => ⟨p, fun q => h (fun p => q)⟩
    | .inr p' => (h (fun p => (p' p).elim)).elim

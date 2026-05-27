example {P Q : Prop} : ¬ (P → Q) → P ∧ ¬ Q := by
  have lemma_p : P ∨ ¬P := Classical.em P
  exact fun h => match lemma_p with
    | .inl p => ⟨p, fun q => h (fun p => q)⟩
    | .inr p' => 
      let p : P := (h (fun p => (p' p).elim)).elim
      let not_q : ¬Q := (h (fun p => (p' p).elim)).elim
      ⟨p, not_q⟩

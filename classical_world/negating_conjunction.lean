example {P Q : Prop} : ¬ (P ∧ Q) → ¬ P ∨ ¬ Q := by
  have lemma_p : P ∨ ¬P := Classical.em P
  have lemma_q : Q ∨ ¬Q := Classical.em Q
  exact fun h =>
    match lemma_p with
      | Or.inl p =>
        match lemma_q with
        | Or.inl q => (h ⟨p, q⟩).elim
        | Or.inr q' => Or.inr q'
      | Or.inr p' =>
        match lemma_q with
        | Or.inl q => Or.inl p'
        | Or.inr q' => Or.inr q'

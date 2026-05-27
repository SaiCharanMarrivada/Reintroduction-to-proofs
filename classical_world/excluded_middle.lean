example {P Q : Prop} : (P ∧ Q) ∨ (P ∧ ¬ Q) ∨ (¬ P ∧ Q) ∨ (¬ P ∧ ¬ Q) := by
  have lemma_p : P ∨  ¬P := Classical.em P
  have lemma_q : Q ∨  ¬Q := Classical.em Q
  exact match lemma_p with
    | Or.inl p =>
      match lemma_q with
      | Or.inl q => Or.inl ⟨p, q⟩
      | Or.inr q' => (Or.inr ∘  Or.inl) ⟨p, q'⟩
    | Or.inr p' =>
      match lemma_q with
      | Or.inl q => (Or.inr ∘ Or.inr ∘ Or.inl) ⟨p', q⟩
      | Or.inr q' => (Or.inr ∘ Or.inr ∘ Or.inr) ⟨p', q'⟩

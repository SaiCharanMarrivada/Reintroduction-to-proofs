example {P Q : Prop} : P → (P → Q) → Q := by
  intro p p_to_q
  apply p_to_q
  assumption

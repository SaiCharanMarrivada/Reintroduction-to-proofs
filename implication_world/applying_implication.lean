example {P Q : Prop} (p : P) (h : P → Q) : Q := by
  exact h p

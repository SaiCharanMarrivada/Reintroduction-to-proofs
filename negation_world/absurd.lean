example {P Q : Prop} : P → ¬ P → Q := by
  exact fun p p' => (p' p).elim

example {P Q R : Prop} (p : P) (h1 : P → Q) (h2 : Q → R) : R := by
  exact h2 (h1 p)

example {P Q : Prop} (p : P) : Q → P := by
  exact fun _ => p

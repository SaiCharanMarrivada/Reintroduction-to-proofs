example {P : Prop} : ¬ P → P → False := by
  exact fun p' p => p' p

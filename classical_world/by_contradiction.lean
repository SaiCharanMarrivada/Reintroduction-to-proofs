example {P : Prop} : ¬ ¬ P → P := by
  exact Classical.byContradiction

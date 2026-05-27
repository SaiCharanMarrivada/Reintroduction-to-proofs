theorem excluded_middle {P : Prop} : P ∨ ¬ P := by
  exact Classical.byContradiction fun em' =>
    em' (Or.inr fun p => em' (Or.inl p))

example {P Q : Prop} : (¬ Q → ¬ P) → (P → Q) := by
  exact fun q'top' p => Classical.byContradiction (fun q' => (q'top' q') p)

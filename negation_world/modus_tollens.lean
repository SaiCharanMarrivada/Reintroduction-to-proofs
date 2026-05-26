example {P Q : Prop} : (P → Q) → ¬ Q → ¬ P := by
  exact fun ptoq q' => q' ∘ ptoq

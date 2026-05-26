example {P Q : Prop} : P ∧ ¬ Q → ¬ (P → Q) := by
  exact fun ⟨p, q'⟩ ptoq => (q' (ptoq p))

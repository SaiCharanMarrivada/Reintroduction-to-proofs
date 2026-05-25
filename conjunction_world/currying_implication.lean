example {P Q R : Prop} : (P ∧ Q → R) ↔ (P → Q → R) := by
  exact ⟨And.curry, And.uncurry⟩

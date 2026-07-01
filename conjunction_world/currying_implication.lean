import conjunction_world.compound_implication
import conjunction_world.more_compound_implication

example {P Q R : Prop} : (P ∧ Q → R) ↔ (P → Q → R) := by
  exact ⟨And.curry, And.uncurry⟩

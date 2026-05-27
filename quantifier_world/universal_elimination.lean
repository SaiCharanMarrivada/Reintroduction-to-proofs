example {A : Type} {P : A → Prop} (a : A) (h : ∀ x : A, P x) : P a := by
  exact h a

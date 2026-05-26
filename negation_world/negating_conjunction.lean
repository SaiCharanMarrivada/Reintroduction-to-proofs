example {P Q : Prop} : ¬ P ∨ ¬ Q → ¬ (P ∧ Q) := by
  exact fun p'orq' =>
    match p'orq' with
    | .inl p' => fun ⟨p, q⟩ => p' p
    | .inr q' => fun ⟨p, q⟩ => q' q

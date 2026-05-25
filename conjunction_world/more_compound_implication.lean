theorem And.uncurry {P Q R : Prop} (h : P → Q → R) : P ∧ Q → R := by
  exact (fun ⟨p, q⟩ => h p q)

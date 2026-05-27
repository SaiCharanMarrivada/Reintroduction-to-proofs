example {A : Type} (P : A → Prop) : (∃ x : A, ¬ (P x)) → ¬ (∀ x : A, P x) := by
  exact fun ⟨x, not_px⟩ f => not_px (f x) 

example {A B : Type} (P : A → B → Prop) : (∃ z : B, ∀ w : A, P w z) → ∀ x : A, ∃ y : B, P x y := by
  exact fun ⟨z, h⟩ x => ⟨z, h x⟩

theorem Function.total {A B : Type} (f : A → B) : ∀ a : A, ∃ b : B, f a = b := by
  exact fun a => ⟨f a, rfl⟩

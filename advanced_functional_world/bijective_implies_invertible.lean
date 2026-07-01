theorem Function.invertible_of_bijective {A B : Type} (f : A → B) (inj : ∀ x y : A, f x = f y → x = y) (surj : ∀ b : B, ∃ x : A, f x = b) : ∃ g : B → A, (∀ a : A, g (f a) = a) ∧ (∀ b : B, f (g b) = b) := by
  exact ⟨
    fun b => (surj b).choose,
    ⟨fun a => inj _ _ (surj (f a)).choose_spec, fun b => (surj b).choose_spec⟩
  ⟩

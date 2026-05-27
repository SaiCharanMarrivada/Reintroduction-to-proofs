theorem Function.invertible_of_bijective {A B : Type} (f : A → B) (inj : ∀ x y : A, f x = f y → x = y) (surj : ∀ b : B, ∃ x : A, f x = b) : ∃ g : B → A, (∀ a : A, g (f a) = a) ∧ (∀ b : B, f (g b) = b) := by
  constructor
  intro b
  exact (surj b).choose
  constructor
  intro a
  apply inj
  exact (surj (f a)).choose_spec
  intro b
  exact (surj b).choose_spec

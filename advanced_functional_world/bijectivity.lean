theorem Bool.not_bijective : (∀ x y : Bool, not x = not y → x = y) ∧ (∀ x : Bool, ∃ y : Bool, not y = x) := by
  exact ⟨Bool.not_injective, Bool.not_surjective⟩

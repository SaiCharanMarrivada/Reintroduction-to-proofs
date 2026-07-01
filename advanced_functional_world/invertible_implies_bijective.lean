theorem Function.bijective_of_invertible' {A B : Type} (f : A → B) (inv : ∃ g : B → A, (∀ a : A, g (f a) = a) ∧ (∀ b : B, f (g b) = b)) : (∀ x y : A, f x = f y → x = y) ∧ (∀ b : B, ∃ x : A, f x = b) := by
  let ⟨g, left_inv, right_inv⟩ := inv
  exact ⟨
    fun x y h =>
      let h2 := (congrArg g h)
      let h3 := (left_inv x).symm
      let h4 := (left_inv y)
      -- h3.trans (h2.trans h4),
      (h3.trans h2).trans h4,
    fun b => ⟨g b, right_inv b⟩
  ⟩

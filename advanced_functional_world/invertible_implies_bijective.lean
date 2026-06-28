theorem Function.bijective_of_invertible' {A B : Type} (f : A → B) (inv : ∃ g : B → A, (∀ a : A, g (f a) = a) ∧ (∀ b : B, f (g b) = b)) : (∀ x y : A, f x = f y → x = y) ∧ (∀ b : B, ∃ x : A, f x = b) := by
  constructor
  intro x y
  let ⟨g, ⟨hl, _⟩⟩ := inv
  let b := f x
  intro fx_eq_fy
  let s := hl x
  rw [fx_eq_fy] at s
  let s2 := hl y
  rw [s] at s2
  exact s2
  
  intro b
  let ⟨g, ⟨l, r⟩⟩ := inv
  let h := r b
  exact ⟨g b, h⟩

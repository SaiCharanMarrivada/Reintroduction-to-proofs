theorem Function.Lawvere_fixed_point {A B : Type} (f : A → A → B) : (∀ g : A → B, ∃ a : A, f a = g) → (∀ n : B → B, ∃ b : B, n b = b) := by
  intro hsurj n
  let g : A → B := fun x => n (f x x)
  let ⟨a, ha⟩ := hsurj g
  have h1 : n (f a a) = g a := rfl
  rw [← ha] at h1
  exact ⟨f a a, h1⟩

theorem Function.Lawvere_fixed_point {A B : Type} (f : A → A → B) : (∀ g : A → B, ∃ a : A, f a = g) → (∀ n : B → B, ∃ b : B, n b = b) := by
  exact fun hsurj n => 
    let g : A → B := fun x => n (f x x)
    let ⟨a, ha⟩ := hsurj g
    let h1 : n (f a a) = f a a := (congrFun ha a).symm
    ⟨f a a, h1⟩

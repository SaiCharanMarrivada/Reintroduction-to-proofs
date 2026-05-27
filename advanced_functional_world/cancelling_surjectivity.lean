theorem Function.Surjective.of_comp {A B C : Type} (f : A → B) (g : B → C) (gf_is_surj : ∀ z : C, ∃ x : A, (g ∘ f) x = z) : ∀ c : C, ∃ y : B, g y = c := by
  exact fun c =>
    let ⟨x, gof⟩ := gf_is_surj c
    ⟨f x, gof⟩

theorem Function.Injective.of_comp {A B C : Type} (f : A → B) (g : B → C) (gf_is_inj : ∀ x y : A, (g ∘ f) x = (g ∘ f) y → x = y) : ∀ x y : A, f x = f y → x = y := by
  exact fun x y fx_eq_fy => by
    let h := gf_is_inj x y
    let h1 : (g ∘ f) x = g (f x) := rfl
    rw [h1, fx_eq_fy] at h
    apply h
    rfl

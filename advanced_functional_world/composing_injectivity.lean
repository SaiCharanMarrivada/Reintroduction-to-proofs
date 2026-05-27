theorem Function.Injective.comp' {A B C : Type} (f : A → B) (g : B → C) (f_is_inj : ∀ x y : A, f x = f y → x = y) (g_is_inj : ∀ x y : B, g x = g y → x = y) : ∀ x y : A, (g ∘ f) x = (g ∘ f) y → x = y := by
  exact fun x y gof =>
    let h1 := f_is_inj x y
    let h2 := g_is_inj (f x) (f y)
    h1 (h2 gof)

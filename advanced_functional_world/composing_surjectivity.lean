theorem Function.Surjective.comp1 {A B C : Type} (f : A → B) (g : B → C) (f_is_surj : ∀ b : B, ∃ a : A, f a = b) (g_is_surj : ∀ c : C, ∃ b : B, g b = c) : ∀ c : C, ∃ a : A, (g ∘ f) a = c := by
  exact fun c =>
    let ⟨b, gb⟩ := g_is_surj c
    let ⟨a, fa⟩ := f_is_surj b
    ⟨a, Eq.trans (congrArg g fa) gb⟩

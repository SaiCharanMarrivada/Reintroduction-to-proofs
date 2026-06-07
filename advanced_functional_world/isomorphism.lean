theorem Function.isomorphism_iff_invertible {A B : Type} (f : A → B) : (∃ g : B → A, g ∘ f = id ∧ f ∘ g = id) ↔ (∃ g : B → A, (∀ a : A, g (f a) =a) ∧ (∀ b : B, f (g b) = b)) := by
  exact ⟨
    fun ⟨g, ⟨gof, fog⟩⟩ => 
      ⟨g, ⟨fun a => congrFun gof a, fun b => congrFun fog b⟩⟩,
    fun ⟨g, ⟨gfa, fgb⟩⟩ =>
      ⟨g, ⟨funext gfa, funext fgb⟩⟩
  ⟩

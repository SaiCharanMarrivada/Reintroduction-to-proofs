theorem Function.isomorphism_iff_invertible {A B : Type} (f : A → B) : (∃ g : B → A, g ∘ f = id ∧ f ∘ g = id) ↔ (∃ g : B → A, (∀ a : A, g (f a) =a) ∧ (∀ b : B, f (g b) = b)) := by
  constructor
  intro ⟨g, ⟨gof, fog⟩⟩
  use g
  constructor
  intro a
  have h1 : g (f a) = (g ∘ f) a := by rfl
  rw [h1, gof]
  rfl
  intro b
  have h2 : f (g b) = (f ∘ g) b := by rfl
  rw [h2, fog]
  rfl
  
  -- intro a
  intro ⟨g, ⟨gf, fg⟩⟩
  use g
  constructor
  ext a
  let h1 := gf a
  have h2 : (g ∘ f) a = g (f a) := by rfl
  rw [h2, h1]
  rfl
  ext b
  let h3 := fg b
  have h4 : (f ∘ g) b = f (g b) := by rfl
  rw [h4, h3]; rfl

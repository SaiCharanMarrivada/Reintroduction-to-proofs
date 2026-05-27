example {A B C D : Type} {a a' : A} {b b' : B} (f g : A × B → C) (h k : C → D) (p : a = a') (q : b = b') (r : h ∘ f = k ∘ g) : h (f ⟨a, b⟩) = k (g ⟨a', b'⟩) := by
  rw [p, q]
  have h1 : h (f (a', b')) = (h ∘ f) (a', b') := by rfl
  have h2 : k (g (a', b')) = (k ∘ g) (a', b') := by rfl
  rw [h1, h2, r]
  rfl

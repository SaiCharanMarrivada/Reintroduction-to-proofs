example {A B C D : Type} {a a' : A} {b b' : B} (f g : A × B → C) (h k : C → D) (p : a = a') (q : b = b') (r : h ∘ f = k ∘ g) : h (f ⟨a, b⟩) = k (g ⟨a', b'⟩) := by
  exact (fun f g h k (rfl) (rfl) => congrFun r (a, b)) f g h k p q

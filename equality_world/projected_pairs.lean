example {A B : Type} (a : A) (b : B) : (⟨a , b⟩ : A × B).fst = a ∧ (⟨a , b⟩ : A × B).snd = b := by
  exact ⟨rfl, rfl⟩

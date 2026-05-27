example {A B : Type} (p : A × B) : p = ⟨p.1, p.2⟩ := by
  exact rfl

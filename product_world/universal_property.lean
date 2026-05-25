example {X A B : Type} : (X → A) × (X → B) → (X → A × B) := by
  exact fun (g, h) x => (g x, h x)

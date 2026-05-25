example {A B C : Type} : (A × B → C) → (A → B → C) := by
  exact fun f a b => f (a, b)

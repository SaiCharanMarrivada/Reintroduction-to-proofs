example {A B C : Type} : (A → B → C) → (B → A → C) := by
  exact fun f b a => f a b

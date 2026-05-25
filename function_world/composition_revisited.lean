example {A B C : Type}: (B → C) → (A → B) → (A → C) := by
  -- exact fun g f => g ∘ f
  exact fun g f a => g (f a)

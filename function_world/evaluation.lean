example {A B : Type} : A → (A → B) → B := by
  exact fun a f => f a

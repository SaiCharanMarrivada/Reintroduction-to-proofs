example {A B : Type} : (A → Empty) → A → B := by
  exact fun atoe a => (atoe a).elim

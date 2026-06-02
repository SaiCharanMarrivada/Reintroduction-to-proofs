example {A : Type} : (Empty → A × Empty) × (A × Empty → Empty) := by
  exact (Empty.elim, Prod.snd)

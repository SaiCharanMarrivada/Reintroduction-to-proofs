example {A : Type} : (Empty → A × Empty) × (A × Empty → Empty) := by
  exact (fun e => (e.elim, e), Prod.snd)

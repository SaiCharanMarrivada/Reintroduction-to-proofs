example {X A B : Type} : (X → A × B) → (X → A) × (X → B) := by
  exact fun f => (fun x => (f x).1, fun x => (f x).2) 

example {A B C : Type} : (((A × B) × C) → (A × (B × C))) × ((A × (B × C)) → ((A × B) × C)) := by
  exact (fun ((a, b), c) => (a, b, c), fun (a, b, c) => ((a, b), c))

example {A B : Type} : A × B → B := by
  exact fun (a, b) => b

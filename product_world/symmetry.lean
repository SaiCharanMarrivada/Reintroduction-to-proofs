example {A B : Type} : A × B → B × A := by
  exact (fun (a, b) => (b, a))

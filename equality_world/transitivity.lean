example {A : Type} {x y z : A} (p : x = y) (q : y = z) : x = z := by
  exact (fun (rfl) (rfl) => rfl) p q

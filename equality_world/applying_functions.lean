example {A B : Type} {x y : A} (f : A → B) (p : x = y) : f x = f y := by
  exact (fun f (rfl) => rfl) f p

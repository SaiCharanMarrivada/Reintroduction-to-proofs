example {A B C : Type} (g : B → C) (f : A → B) : A → C := by
  exact (fun a => g (f a))

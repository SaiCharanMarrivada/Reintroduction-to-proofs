example {A B : Type} {f g : A → B} (p : ∀ x : A, f x = g x) : f = g := by
  -- axiom of extensionality
  exact funext fun x => p x

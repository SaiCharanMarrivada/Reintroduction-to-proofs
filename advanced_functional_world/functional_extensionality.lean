example {A B : Type} {f g : A → B} (p : ∀ x : A, f x = g x) : f = g := by
  -- axiom of extensionality
  ext x
  exact p x

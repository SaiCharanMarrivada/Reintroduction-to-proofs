example {F V : Type} : ((((V → F) → F) → F) → F) → ((V → F) → F) := by
  exact fun f g => f (fun h => h g)

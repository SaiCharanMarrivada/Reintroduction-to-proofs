example {A : Type} : ∀ w x y z : A, w = x → x = y → y = z → w = z := by
  exact fun w x y z (rfl) (rfl) h => h 

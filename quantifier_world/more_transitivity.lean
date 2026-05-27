example {A : Type} : ∀ w x y z : A, w = x → x = y → y = z → w = z := by
  intro w x y z w_eq_x x_eq_y y_eq_z
  rw [w_eq_x, x_eq_y]
  assumption

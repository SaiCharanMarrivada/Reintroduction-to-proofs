theorem Bool.not_injective : ∀ x y : Bool, not x = not y → x = y := by
  -- other 2 cases simply don't occur
  exact fun x y h => match x, y with
    | false, false => rfl
    | true, true => rfl

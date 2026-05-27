theorem Bool.not_injective : ∀ x y : Bool, not x = not y → x = y := by
  exact fun x y h => match x, y with
    | false, false => rfl
    | false, true => by cases h
    | true, false => by cases h
    | true, true => rfl

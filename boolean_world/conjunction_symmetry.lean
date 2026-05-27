example (x y : Bool) : and x y = and y x := by
  exact match x, y with
    | false, false => rfl
    | false, true => rfl
    | true, false => rfl
    | true, true => rfl

example (x y : Bool) : or x y = or y x := by
  exact match x, y with
    | false, false => rfl
    | false, true => rfl
    | true, false => rfl
    | true, true => rfl

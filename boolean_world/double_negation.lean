example (b : Bool) : b = not (not b) := by
  exact match b with
    | false => rfl 
    | true => rfl 

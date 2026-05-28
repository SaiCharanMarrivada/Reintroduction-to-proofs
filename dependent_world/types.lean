example : (Bool → Type) := by
  exact fun b => match b with
    | false => Nat
    | true => Int

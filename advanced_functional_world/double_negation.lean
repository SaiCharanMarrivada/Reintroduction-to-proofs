theorem Bool.not_involutive : not ∘ not = id := by
  ext b
  exact match b with
    | true => rfl
    | false => rfl

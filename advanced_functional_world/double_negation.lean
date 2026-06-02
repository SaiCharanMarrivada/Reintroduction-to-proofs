theorem Bool.not_involutive : not ∘ not = id := by
  exact funext fun b =>
    match b with
    | true => rfl
    | false => rfl

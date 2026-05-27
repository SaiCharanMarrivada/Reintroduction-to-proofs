example (x y : Bool) : (not (and x y) = or (not x) (not y)) ∧ (not (or x y) = and (not x) (not y)) := by
  exact match x, y with
    | false, false => ⟨rfl, rfl⟩
    | false, true => ⟨rfl, rfl⟩
    | true, false => ⟨rfl, rfl⟩
    | true, true => ⟨rfl, rfl⟩

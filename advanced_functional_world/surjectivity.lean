theorem Bool.not_surjective : ∀ b : Bool, ∃ x : Bool, not x = b := by
  exact fun b => match b with
    | true => ⟨false, rfl⟩
    | false => ⟨true, rfl⟩

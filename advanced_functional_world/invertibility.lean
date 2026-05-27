theorem Bool.not_invertible : ∃ g : Bool → Bool, (∀ b : Bool, g (not b) = b) ∧ (∀ b : Bool, not (g b) = b) := by
  exact ⟨not,
    let h := fun b => match b with
      | true => rfl
      | false => rfl;
    ⟨h, h⟩⟩

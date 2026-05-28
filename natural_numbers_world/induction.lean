-- every natural number is even or odd
example : ∀ n : Nat , (∃ m : Nat, n = 2 * m) ∨ (∃ m : Nat, n = 2 * m + 1) := by
  exact fun n => by
    induction n with
      | zero => exact .inl ⟨0, rfl⟩
      | succ n' ih => exact match ih with
        -- adding 'try' because on older versions of lean, without rfl, goal is not closed
        | .inl ⟨m1, h1⟩ => .inr ⟨m1, by rw [h1]; try rfl⟩ 
        | .inr ⟨m2, h2⟩ => .inl ⟨m2 + 1, by rw [h2]; rfl⟩

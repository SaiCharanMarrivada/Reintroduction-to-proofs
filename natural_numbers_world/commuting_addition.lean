example : ∀ m n : Nat, m + n = n + m := by
  exact fun m n => by
    induction n with
      | zero => rw [Nat.zero_add]; rfl
      -- adding 'try' because on newer versions of lean, 'rw' closes the goal
      | succ n' ih => rw [Nat.add_succ, ih, Nat.succ_add]; try rfl

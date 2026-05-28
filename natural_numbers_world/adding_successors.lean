open Nat
example : ∀ m n : Nat, m + succ n = succ (m + n) ∧ succ m + n = succ (m + n) := by
  exact fun m n => ⟨
    rfl,
    by induction n with
      | zero => rfl
      | succ n' ih => rw [add_succ, ih]; rfl
  ⟩

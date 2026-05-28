open Nat
example : ∀ n : Nat, (n + 0 = n) ∧ (0 + n = n) := by
  exact fun n => ⟨
    rfl, 
    by induction n with
      | zero => rfl
      | succ n' ih => rw [add_succ, ih]; try rfl
  ⟩

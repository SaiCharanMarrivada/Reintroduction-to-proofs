open Nat
example : (1 = succ 0) ∧ (2 = succ 1) ∧ (3 = succ 2) ∧ (4 = succ 3) ∧ (9223372036854775809 = succ 9223372036854775808) := by
  exact ⟨rfl, rfl, rfl, rfl, rfl⟩

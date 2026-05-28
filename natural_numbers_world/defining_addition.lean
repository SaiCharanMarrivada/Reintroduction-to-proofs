open Nat
example : (∀ n : Nat, (n + 0 = n)) ∧ (∀ m n : Nat, m + (succ n) = succ (m + n)) := by
  exact ⟨fun n => rfl, fun m n => rfl⟩

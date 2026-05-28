open Nat
example : ¬ (∃ n : Nat, succ n = 0) := by
  exact fun ⟨n, h⟩ => by cases h

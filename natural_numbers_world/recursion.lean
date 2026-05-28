open Nat
example : ∃ f : Nat → Nat, (f 0 = 0) ∧ (∀ n : Nat, f (succ n) = n) := by
  exact ⟨pred, ⟨rfl, fun _ => rfl⟩⟩

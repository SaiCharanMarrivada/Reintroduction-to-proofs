open Nat
theorem Nat.succ_injective : ∀ m n : Nat, succ m = succ n → m = n := by
  intro m n h 
  cases h
  rfl

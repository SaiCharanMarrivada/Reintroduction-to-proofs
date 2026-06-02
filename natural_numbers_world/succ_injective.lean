open Nat
theorem Nat.succ_injective : ∀ m n : Nat, succ m = succ n → m = n := by
  -- brackets are important here, as we are doing case analysis on the equality
  exact fun m n (rfl) => rfl

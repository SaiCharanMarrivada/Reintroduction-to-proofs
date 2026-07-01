open Nat

-- every natural number is even or odd
example : ∀ n : Nat , (∃ m : Nat, n = 2 * m) ∨ (∃ m : Nat, n = 2 * m + 1) := by
  exact (let rec odd_even (n : Nat) : (∃ m : Nat, n = 2 * m) ∨ (∃ m : Nat, n = 2 * m + 1) := 
    match n with
      | zero => .inl ⟨0, rfl⟩
      | succ n' => 
          match (odd_even n') with
          | .inl ⟨m1, h1⟩ => .inr ⟨m1, congrArg succ h1⟩ 
          | .inr ⟨m2, h2⟩ => .inl ⟨m2 + 1, congrArg succ h2⟩;
    odd_even
  )

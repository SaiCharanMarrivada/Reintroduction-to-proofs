open Nat
example : ∀ n : Nat, (n + 0 = n) ∧ (0 + n = n) := by
  exact fun n => ⟨
    rfl, 
    let rec zero_add (n : Nat) : (0 + n = n) := 
      match n with
      | zero => rfl
      | succ n' => congrArg succ (zero_add n'); 
    zero_add n
  ⟩

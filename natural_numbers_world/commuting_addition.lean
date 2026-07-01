open Nat
example : ∀ m n : Nat, m + n = n + m := by
  let rec add_comm (m n : Nat) : m + n = n + m :=
    match n with
      | zero => (Nat.zero_add m).symm
      | succ n' => 
          calc 
            m + (n' + 1) = m + n' + 1 := add_succ m n'
            _ = n' + m + 1 := congrArg succ (add_comm m n') 
            _ = n' + 1 + m := (Nat.succ_add n' m).symm
  exact add_comm

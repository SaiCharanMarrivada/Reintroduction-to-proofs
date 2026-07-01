open Nat
example : ∀ m n : Nat, m + succ n = succ (m + n) ∧ succ m + n = succ (m + n) := by
  exact fun m n => ⟨
    rfl,
    let rec succ_add m n : succ m + n = succ (m + n)  :=
      match n with
      | zero => rfl
      | succ n' => congrArg succ (succ_add m n'); 
    succ_add m n
  ⟩

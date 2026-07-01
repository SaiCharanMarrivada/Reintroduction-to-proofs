open Nat
example : ¬ (∃ n : Nat, succ n = 0) := by
  let P n := match n with
    | zero => False
    | succ n' => True
  exact fun ⟨n, h⟩ =>
    ((congrArg P h).mp : P (succ n) -> P 0) True.intro

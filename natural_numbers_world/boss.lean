open Nat
example : ¬ (∃ n : Nat, succ n = 0) := by
  let P n := match n with
    | zero => False
    | succ n' => True
  exact fun ⟨n, h⟩ =>
    let f : P (succ n) → P 0 := Eq.mp (congrArg P h);
    f True.intro

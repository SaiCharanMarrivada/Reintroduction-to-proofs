open Nat
example : ∀ m n : Nat, m + succ n = succ (m + n) ∧ succ m + n = succ (m + n) := by
  exact fun m n => ⟨
    let add_succ (m n : Nat) : m + succ n = succ (m + n) := rfl; add_succ m n,
    let rec succ_add (m n : Nat) : succ m + n = succ (m + n) :=
      match n with
      | zero => rfl
      | succ n' => by rw [add_succ, (succ_add m n')]; rfl;
    succ_add m n
    /- by induction n with -/
    /-   | zero => rfl -/
    /-   | succ n' ih => rw [add_succ, ih]; rfl -/
  ⟩

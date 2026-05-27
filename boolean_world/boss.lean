example : ∃ p : Bool, ∃ q : Bool, ∃ r : Bool, and (not p || q) (and (not q || p) (and (not p || not r) (and (not q || not r) (p || q)))) = true := by
  exact ⟨true, true, false, rfl⟩

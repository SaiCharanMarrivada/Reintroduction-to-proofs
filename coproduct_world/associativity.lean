example {A B C : Type} : (((A ⊕ B) ⊕ C) → (A ⊕ (B ⊕ C))) × ((A ⊕ (B ⊕ C)) → ((A ⊕ B) ⊕ C)) := by
  constructor
  -- first element
  intro ab_c
  rcases ab_c with ((a | b) | c)
  left; assumption
  right; left; assumption
  right; right; assumption
  -- second element
  intro a_bc
  rcases a_bc with (a | (b | c))
  left; left; assumption
  left; right; assumption
  right; assumption

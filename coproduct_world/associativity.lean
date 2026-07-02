example {A B C : Type} : (((A ⊕ B) ⊕ C) → (A ⊕ (B ⊕ C))) × ((A ⊕ (B ⊕ C)) → ((A ⊕ B) ⊕ C)) := by
  exact (
    fun ab_c => 
      match ab_c with
      | .inl (.inl a) => .inl a
      | .inl (.inr b) => .inr (.inl b)
      | .inr c => .inr (.inr c),
    fun a_bc => 
      match a_bc with
      | .inl a => .inl (.inl a)
      | .inr (.inl b) => .inl (.inr b)
      | .inr (.inr c) => .inr c
  )

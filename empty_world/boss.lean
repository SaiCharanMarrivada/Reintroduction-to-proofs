example : (Empty ⊕ (Empty → Empty) → (Empty → Empty) × (Empty → Empty)) × ((Empty → Empty) × (Empty → Empty) → Empty ⊕ (Empty → Empty)) := by
  exact ⟨
    fun (Sum.inr etoe) => (etoe, etoe), 
    fun ⟨etoe, _⟩ => Sum.inr etoe
  ⟩

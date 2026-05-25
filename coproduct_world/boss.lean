example {A B C D : Type} : ((A ⊕ B → C × D) → (A → C) × (B → C) × (A → D) × (B → D)) × ((A → C) × (B → C) × (A → D) × (B → D) → (A ⊕ B → C × D)) := by
  exact ⟨
    fun f => ⟨
      fun a => (f (Sum.inl a)).1,
      fun b => (f (Sum.inr b)).1,
      fun a => (f (Sum.inl a)).2,
      fun b => (f (Sum.inr b)).2
    ⟩,
    fun (f, g, h, i) aorb => match aorb with
      | Sum.inl a => (f a, h a)
      | Sum.inr b => (g b, i b)
  ⟩

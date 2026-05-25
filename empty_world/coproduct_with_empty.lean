example {A : Type} : (A → A ⊕ Empty) × (A ⊕ Empty → A) := by
  exact (
    fun a => Sum.inl a,
    fun ae => match ae with
      | Sum.inl a => a
      | Sum.inr e => e.elim
  )

example {A : Type} : (A → A ⊕ Empty) × (A ⊕ Empty → A) := by
  exact (fun a => Sum.inl a, fun (Sum.inl a) => a)

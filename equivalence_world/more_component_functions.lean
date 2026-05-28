example {A B C : Type} : (A ⊕ B → C) ≃ (A → C) × (B → C) := by
  constructor
  exact Sum.components
  exact fun ⟨f1, f2⟩ aorb => match aorb with
    | Sum.inl a => f1 a
    | Sum.inr b => f2 b
  intro f
  ext aorb
  exact match aorb with
   | Sum.inl a => rfl
   | Sum.inr b => rfl
  intro ⟨f1, f2⟩
  ext a
  rfl
  rfl

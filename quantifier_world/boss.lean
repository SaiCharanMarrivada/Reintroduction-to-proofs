example {A : Type} (P : A → Prop) : ¬ (∀ x : A, P x) → (∃ x : A, ¬ (P x)) := by
  exact fun f =>
    Classical.byContradiction fun g =>
      f (fun x => Classical.byContradiction (fun h => g ⟨x, h⟩))

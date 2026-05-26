example {P : Prop} : ¬ P ↔ ¬ ¬ ¬ P := by
  exact ⟨
    fun not_p not_not_p => not_not_p not_p,
    fun not_not_not_p p => (not_not_not_p (fun not_p => not_p p))
  ⟩

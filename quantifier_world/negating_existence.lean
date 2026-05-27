example {A : Type} (P : A → Prop) : (∀ x : A, ¬ (P x)) ↔ ¬ (∃ x : A, P x) := by
  exact ⟨
    fun h ⟨x, px⟩ => (h x) px,
    fun h x px => h ⟨x, px⟩
  ⟩

example {P Q R S T U V W X Y Z : Prop} : (T ∨ U → V ∧ Y) → (Q → P → T) → (Y → Q → W) → ((V ∧ W) ∨ (X ∧ Y) → Z) → (R → S → U) ∧ (V → R → X) → P ∧ (Q ∨ R) ∧ S → Z := by
  exact fun f1 f2 f3 f4 ⟨f5, f6⟩ ⟨p, qorr, s⟩ => by
    rcases qorr with (q | r)
    . let t := f2 q p
      let ⟨v, y⟩ := f1 (Or.inl t)
      let w := f3 y q
      exact (f4 (Or.inl ⟨v, w⟩))
    . let u := f5 r s
      let ⟨v, y⟩ := f1 (Or.inr u)
      let x := f6 v r
      exact (f4 (Or.inr ⟨x, y⟩))

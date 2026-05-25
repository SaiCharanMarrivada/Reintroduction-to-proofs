example {P Q R S T U V W X Y Z : Prop} : P → (R → S ∧ T) → (U → P → R) → ((U → Y) → Z) → (W ∧ T ∧ V → X ∧ Y) → (S → V ∧ W) → Z := by
  exact fun p f1 f2 f3 f4 f5 => 
    f3 (fun u => 
      let r := f2 u p
      let ⟨s, t⟩ := f1 r
      let ⟨v, w⟩ := f5 s
      (f4 ⟨w, t, v⟩).2
    )

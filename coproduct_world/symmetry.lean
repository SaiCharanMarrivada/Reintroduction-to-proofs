example {A B : Type} : A ⊕ B → B ⊕ A := by
  exact fun sum_ab => match sum_ab with
    | Sum.inl a => Sum.inr a
    | Sum.inr b => Sum.inl b

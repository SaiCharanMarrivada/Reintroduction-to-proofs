example {A B C : Type} (g : A → C) (h : B → C) : (A ⊕ B → C) := by
  exact fun sum_ab => match sum_ab with
    | Sum.inl a => g a
    | Sum.inr b => h b

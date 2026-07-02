example {A B C : Type} (g : A → C) (h : B → C) : (A ⊕ B → C) := by
  exact fun sum_ab => sum_ab.elim (fun a => g a) (fun b => h b)

example {A B : Type} : (A → B) → (B → Empty) → (A → Empty) := by
  /- exact (fun atob btoe a => btoe (atob a)) -/
  /- exact fun atob btoe => Function.comp btoe atob -/
  exact flip Function.comp

theorem empty_proposition {x y : Empty} : x = y := by
  exact x.elim

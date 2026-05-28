example : Unit ⊕ Unit ≃ Bool := by
  constructor
  exact fun unit_or_unit => match unit_or_unit with
   | Sum.inl .unit => false
   | Sum.inr .unit => true
  exact fun b => match b with
    | false => Sum.inl .unit
    | true => Sum.inr .unit
  exact fun a => match a with
    | Sum.inl .unit => rfl
    | Sum.inr .unit => rfl
  exact fun b => match b with
    | false => rfl
    | true => rfl

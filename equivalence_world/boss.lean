import equivalence_world.isomorphism

example : Unit ⊕ Unit ≃ Bool := by
  exact ⟨
    fun unit_or_unit => 
      match unit_or_unit with
      | Sum.inl .unit => false
      | Sum.inr .unit => true,
    fun b => 
      match b with
      | false => Sum.inl .unit
      | true => Sum.inr .unit,
    fun a =>
      match a with
      | Sum.inl .unit => rfl
      | Sum.inr .unit => rfl,
    fun b =>
      match b with
      | false => rfl
      | true => rfl
  ⟩

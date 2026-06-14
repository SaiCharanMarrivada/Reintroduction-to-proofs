theorem Nat.pred_comp_succ : pred ∘ succ = id := by
  exact funext fun n => rfl

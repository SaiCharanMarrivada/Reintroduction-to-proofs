example {P Q R : Prop} : (P → Q) → (Q → R) → (P → R) := by  
  exact (fun p_to_q q_to_r p => q_to_r (p_to_q p))

example {P Q R S : Prop} : (P ∨ Q) ∧ (R ∨ S) ↔ (P ∧ R) ∨ (P ∧ S) ∨ (Q ∧ R) ∨ (Q ∧ S) := by
exact ⟨
  fun ⟨porq, rors⟩ => 
    match porq with
    | .inl p =>
      match rors with
      | .inl r => .inl ⟨p, r⟩
      | .inr s => .inr (.inl ⟨p, s⟩)
    | .inr q =>
      match rors with
      | .inl r => .inr (.inr (.inl ⟨q, r⟩))
      | .inr s => .inr (.inr (.inr ⟨q, s⟩)),
  fun f => 
    match f with
    | .inl ⟨p, r⟩ => ⟨.inl p, .inl r⟩
    | .inr ps_qr_qs =>
      match ps_qr_qs with
      | .inl ⟨p, s⟩ => ⟨.inl p, .inr s⟩
      | .inr qr_qs => 
        qr_qs.elim (fun ⟨q, r⟩ => ⟨.inr q, .inl r⟩) (fun ⟨q, s⟩ => ⟨.inr q, .inr s⟩)
⟩ 

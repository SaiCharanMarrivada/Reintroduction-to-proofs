example {A : Type} {B C : A → Type} (f : (x : A) → B x → C x) : ((y : A) → B y) → ((z : A) → C z) := by
  exact fun g z => f z (g z)

example {A B C D E M N X Y Z : Type} : (B × D → M) → (E → Y × N) → (A → M → X) → (C → N → Z) → (A × B × C × D × E → X × Y × Z) := by
  exact fun f1 f2 f3 f4 (a, b, c, d, e) => 
    let m := f1 (b, d)
    let x := f3 a m
    let (y, n) := f2 e
    let z := f4 c n
    (x, y, z)

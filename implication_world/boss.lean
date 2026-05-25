example {P Q R S T U V W X Y Z : Prop} : (S → X) → (T → W) → (R → Y) → (W → Q) → (U → S) → (Y → T) → (X → V) → (Q → U) → (V → Z) → (P → R) → P → Z := by
  exact fun f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 p =>
    f9 (f7 (f1 (f5 (f8 (f4 (f2 (f6 (f3 (f10 p)))))))))

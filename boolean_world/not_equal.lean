example : ¬ (false = true) :=
  let P b := match b with
    | false => False
    | true => True;
  fun p =>
    let f : P true -> P false := Eq.mpr (congrArg P p);
    f True.intro

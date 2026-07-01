example : ¬ (false = true) :=
  let P b := match b with
    | false => False
    | true => True;
  fun p =>
    -- congrArg P p : P true = P false
    ((congrArg P p).mpr : P true -> P false) True.intro 

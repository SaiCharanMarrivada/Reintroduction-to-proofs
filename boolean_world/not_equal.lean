example : ¬ (false = true) :=
  let P b := match b with
    | false => False
    | true => True;
  fun p =>
    -- congrArg P p : P false = P true 
    ((congrArg P p).mpr : P true -> P false) True.intro 

Require Import DepReplace.DepReplace.

Goal 1 + 1 = 2.
pose (x := 1).
match goal with
  | |- ?G =>
    replace_with 1 x G (fun G' => change G')
end.
reflexivity.
Defined.

Parameter F : nat -> Type.

Goal forall x y : F 1, x = y.
intro.
pose (z := 1).
match goal with
  | |- ?G =>
    replace_with 1 z G (fun G' => change G')
end.
Abort.

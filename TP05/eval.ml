open Types ;;
open Tools ;;
open TypeChecker;;

let rec isNum t =
  match t with
  | Zero -> True
  | Succ (t1) -> (isNum t1)
  | _ -> False
;;

let rec eval1 t =
  match t with 
  | Var x -> valeur x
  | Lambda(x, typ, t1) -> t
  | App(Lambda(x, typ, t1), t2) -> (subst x (eval1 t2) t1)
  | App(v1, t2) when (eval1 v1) == v1 -> App(v1, (eval1 t2))
  | App(t1, t2) -> App((eval1 t1), t2)
  | Cond (True, t2 , t3) -> t2
  | Cond (False, t2, t3) -> t3
  | Cond (t1, t2, t3) -> Cond ((eval1 t1), t2, t3)
  | Succ (t1) -> Succ (eval1 t1)
  | Pred (Zero) -> Pred (Zero)
  | Pred (Succ t1) -> t1
  | Pred (t1) -> Pred (eval1 t1)
  | Iszero (Zero) -> True
  | Iszero (Succ t1) -> False
  | Iszero (t1) -> Iszero (eval1 t1)
  | _ -> t
;;

let isVal t = 
  match t with 
  | True -> True
  | False -> True
  | Zero -> True
  | Cond (t1, t2, t3) -> False
  | Iszero (t1) -> False
  | Pred (t1) -> False
  | Succ (t1) -> isNum t1
  | None -> None  | Var x -> valeur x
  | Lambda(x, typ, t1) -> t
  | App(Lambda(x, typ, t1), t2) -> (subst x (eval1 t2) t1)
  | App(t1, t2) -> App((eval1 t1), t2)
;;

let rec eval t =
  begin
  try 
    TypeChecker.typecheck t []
  with
    | NoType -> Exn "Le terme n'est pas clos"
    | BadType -> Exn "Mauvais type"
  end;
  let t' = (eval1 t) 
  in 
  if t = t' then 
    t
  else 
    (eval t')
;;



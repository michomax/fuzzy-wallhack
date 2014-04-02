open Types ;;
open Tools ;;

let rec isNum t =
  match t with
  | Zero -> True
  | Succ (t1) -> (isNum t1)
  | _ -> False
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
  | None -> None
;;


let rec eval1 t =
  match t with 
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

let rec eval1 t =
  match t with 
  | Var x -> valeur x
  | Lambda(x, t1) -> t
  | App(Lambda(x, t1), t2) -> (subst x (eval1 t2) t1)
  | App(t1, t2) -> App((eval1 t1), t2)
;;

let rec eval1 t = 



let rec eval t =
  let t' = (eval1 t) 
  in 
  if t = t' then 
    t
  else 
    (eval t')
;;



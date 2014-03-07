open Types ;;
open Tools ;;

let rec eval1 t =
  match t with 
  | Var x -> valeur x
  | Lambda(x, t) -> term
  | App(t1, t2) -> App((eval1 t1), t2)
  | App(Lambda(x, t), t2) -> App (subst x (eval t2) t)
;;

let rec eval t =
  let t' = (eval1 t) 
  in 
  if t = t' then 
    t
  else 
    (eval t')
;;
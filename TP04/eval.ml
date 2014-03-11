open Types ;;
open Tools ;;

let rec eval1 t =
  match t with 
  | Var x -> valeur x
  | Lambda(x, t1) -> t
  | App(Lambda(x, t1), t2) -> (subst x (eval1 t2) t1)
  | App(t1, t2) -> App((eval1 t1), t2)
;;

let rec eval t =
  let t' = (eval1 t) 
  in 
  if t = t' then 
    t
  else 
    (eval t')
;;
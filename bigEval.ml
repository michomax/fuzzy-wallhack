open Types ;;

let rec eval t =
  match t with 
  | True -> True
  | False -> False
  | Cond (t1, t2, t3) when (eval t1) = True -> eval t2
  | Cond (t1, t2, t3) when (eval t1) = False -> eval t3
  | Succ (t1) -> Succ (eval t1)
  | Pred (t1) -> (match (eval t1) with
    | Succ tt -> tt
    | _ -> t1
  )
  | Iszero (t1) -> (match (eval t1) with
    | Zero -> True
    | Succ tt -> False
    | _ -> t1
  )
  | _ -> None
;;

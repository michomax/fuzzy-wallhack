open Types;;
open Eval;;

exception NoType;;
exception BadType;;

let istypable t =
    match t with
        | Some_type tt -> true
        | _ -> false
;;

let rec searchType x gamma = 
  match gamma with 
  | (var, typ) when var = x -> typ
  | couple::suite -> searchType x suite
;;
 
let rec typecheck ty gamma =
    match ty with 
    | True -> Bool
    | False -> Bool
    | Zero -> Nat
    | Pred t -> if typecheck t gamma = Nat then
                  Nat
                else
                  raise BadType
    | Succ t -> if typecheck t gamma = Nat then
                  Natif typecheck t l = Some_type Nat then
                  Some_type Nat
                else
                  raise BadType
    | Iszero t -> if typecheck t gamma = Nat then
                  Bool
                else
                  raise BadType
    | Cond (c, t1, t2) -> if typecheck c gamma = Bool then
                  let type1 =  typecheck t1 gamma in 
                  if (type1 = typecheck t2 gamma) then 
                    type1
                  else 
                    raise BadType
                else
                  raise BadType
    | App (t1, t2) -> 
      begin 
        match t1 with 
        | Fct(t11, t12) when ((typecheck t2 gamma) = t11) -> t12
        | _ -> raise BadType
      end
    | Lambda (s, typ, term) -> (Fct (typ, typecheck term (s, typ)::gamma))
    | Var s -> searchType s gamma
    | _ -> raise NoType
;;
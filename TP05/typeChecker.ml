open Types;;
open Tools;;

exception NoType;;
exception BadType;;

let rec searchType x gamma = 
  match gamma with 
  | [] -> 
    begin 
      match Tools.valeur x with
      | Var y -> raise NoType
      | term -> typecheck term gamma 
    end
  | (var, typ)::s when var = x -> typ
  | _::s -> searchType x s
 
and typecheck ty gamma =
    match ty with 
    | True -> Bool
    | False -> Bool
    | Zero -> Nat
    | Pred t -> if typecheck t gamma = Nat then
                  Nat
                else
                  raise BadType
    | Succ t -> if typecheck t gamma = Nat then
                  Nat
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
        match (typecheck t1 gamma) with 
        | Fct(t11, t12) when ((typecheck t2 gamma) = t11) -> t12
        | _ -> raise BadType
      end
    | Lambda (s, typ, term) -> (Fct (typ, (typecheck term ((s, typ)::gamma))))
    | Var s -> searchType s gamma
    | _ -> raise BadType
;;
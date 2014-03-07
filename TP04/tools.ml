open Types ;;

let hash = Hashtbl.create 1;;

let affect (nom : string) (val : term) = 
  Hashtbl.replace hash nom term
;;

let valeur nom = 
    try 
      Hashtbl.find hash nom
    with 
      Not_found -> Var nom
;;


let rec subst x tc ts = 
  match ts with 
    | Var x when x = t1 -> t2
    | App (t1, t2) -> App ((substitute x tc t1), (substitute x tc t2))
    | Lambda (x, t2) when x <> tc -> Lambda (x, (substitute x tc t2))
    | _ -> t
;;


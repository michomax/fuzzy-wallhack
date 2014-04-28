open Types ;;

let hash = Hashtbl.create 1;;

let affect (nom : string) (valeur : term) = 
  Hashtbl.replace hash nom valeur ;
  valeur
;;

let valeur nom = 
    try 
      Hashtbl.find hash nom
    with 
      Not_found -> Var nom
;;


let rec subst v tc ts = 
  match ts with 
    | Var x when x = v -> tc
    | App (t1, t2) -> App ((subst v tc t1), (subst v tc t2))
    | Lambda (x, t2,) when x <> v -> Lambda (x, (subst v tc t2))
    | _ -> ts
;;


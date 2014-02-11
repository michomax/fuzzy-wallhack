(* Tp01 Chris Foulon && Maxime Michotte *)

exception NotTh of string;;
exception IsTh of string;;
exception Contrad of string;;
(*Définition des types*)

type proposition = 
  | True
  | False
  | NON of proposition
  | OU of proposition * proposition
  | ET of proposition * proposition
  | IMP of proposition * proposition
  | EQUI of proposition * proposition
  | SYMBOLE of string;;

(*fonction d'affichage*)
let affichage proposition = 
  let rec aux prop =  
    match prop with
    | True -> "vrai"
    | False -> "faux"
    | NON x -> "non " ^ (aux x)
    | OU (x,y) -> "(" ^ (aux x)  ^ " ou " ^ (aux y) ^ ")"
    | ET (x,y) -> "(" ^ (aux x)  ^ " et " ^ (aux y) ^ ")"
    | IMP (x,y) -> "(" ^ (aux x)  ^ " => " ^ (aux y) ^ ")"
    | EQUI (x,y) -> "(" ^ (aux x)  ^ " <=> " ^ (aux y) ^ ")"
    | SYMBOLE x -> x
  in aux proposition
;;

let value argument liste= 
  let rec aux arg list= 
    match list with
    | [] -> failwith "La liste ne contient pas l'argument"
    | (x,y) :: listp when x = arg -> y
    | (x,y) :: listp -> aux arg listp
  in aux argument liste
;;

let evaluation proposition liste = 
  let rec aux prop =  
    match prop with
    | True -> true
    | False -> false
    | NON x -> not(aux x)
    | OU (x,y) -> (aux x)||(aux y)
    | ET (x,y) -> (aux x)&&(aux y)
    | IMP (x,y) -> not(aux x)||(aux y)
    | EQUI (x,y) -> (aux x)==(aux y)
    | SYMBOLE x -> value x liste
  in aux proposition
;;

let rec estdans x list = 
  match list with
  | [] -> false 
  | e::ll when e = x -> true
  | e::ll -> estdans x ll
;; 

let supdoublon lst =
  let rec aux l1 l2 = 
  match l1 with 
  | [] -> l2 
  | e::ll when not(estdans e ll) -> aux ll (e::l2)
  | e::ll -> aux ll l2
  in aux lst []
;;

let listesymb prop = 
  let rec aux prop lst = 
    match prop with 
    | NON x -> aux x lst
    | OU (x,y) -> (aux x lst)@(aux y lst)
    | ET (x,y) -> (aux x lst)@(aux y lst)
    | IMP (x,y) -> (aux x lst)@(aux y lst)
    | EQUI (x,y) -> (aux x lst)@(aux y lst)
    | SYMBOLE x -> [x]@lst
    | _ -> lst
  in supdoublon(aux prop [])
;;


let print_liaison lst = 
  match lst with 
  |[] -> "\n"
  |_ -> 
    let rec aux l1 str = 
      match l1 with 
      | [] -> str 
      | (e, b)::ll when (b = true) -> aux ll (e ^ " est vraie\n" ^ str)
      | (e, b)::ll -> aux ll (e ^ " est fausse\n" ^ str) 
    in " quand \n" ^ (aux lst "")
;;

let list_to_string lst =
  let rec aux l str = 
    match l with 
    | [] -> str
    | e::ll -> aux ll e^ ", " ^ str
  in aux lst ""
;; 

let tauto prop = 
  let rec aux prop ll ls = 
    match ls with 
    | [] when ll == [] && (evaluation prop ll) == true -> raise (IsTh 
	("Theoreme :\n" ^ (affichage prop)))
    | [] when ll == [] && (evaluation prop ll) == false -> raise (Contrad
      ((affichage prop) ^ " n'est pas un theoreme, \n car la proposition est tout le temps fausse."))
    | [] when (evaluation prop ll) = false -> raise (NotTh ((affichage prop) ^ 
      (" n'est pas un theoreme car la proposition est fausse \n") ^
      (print_liaison ll)))
    | [] -> true
    | e::ls1 -> (aux prop ((e, true)::ll) ls1) && (aux prop ((e, false)::ll) ls1)
  in match (aux prop [] (listesymb prop)) with
  | true -> "Theoreme: pour toute proposition " ^ (list_to_string (listesymb prop)) ^ "\n" ^ (affichage prop)
  | _ -> failwith "Erreur"
;;

let p1 = (OU(SYMBOLE "C", NON(OU(SYMBOLE "A", SYMBOLE "B"))));;

tauto p1;;

let p2 = IMP(False, NON(OU(SYMBOLE "A", True)));;

affichage p2;;

tauto p2;;

tauto (IMP(False, True));;

tauto (IMP(False, IMP(NON(False), True)));;

tauto (IMP(True, False));;

tauto (OU(SYMBOLE "e", NON(SYMBOLE "e")));;

open Types;;
open Eval;;

let rec stringOfTerm term = 
  match term with 
    | Var x -> x
    | Lambda (x, t) -> "λ" ^ x ^ ". " ^ (stringOfTerm t)
    | App (t1, t2) -> (stringOfTerm t1) ^ " " ^ (strinOOfTerm t2)
;;


let affichage term = 
  print_endline (stringOfTerm term)
;;
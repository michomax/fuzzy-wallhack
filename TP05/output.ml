open Types;;
open Eval;;

let rec indent i = 
  match i with 
  | 0 -> ""
  | n -> "	" ^ indent (i - 1) 
;;

let rec toString t n = 
  let ind = (indent n) 
  in 
  match t with
  | True -> ind ^ "vrai "
  | False -> ind ^ "faux "
  | Zero -> "0"
  | Var x -> x
  | Lambda (x, t) -> ind ^ "λ" ^ x ^ ". " ^ (stringOfTerm t)
  | App (t1, t2) -> (stringOfTerm t1) ^ " " ^ (stringOfTerm t2)
  | Cond (t1, t2, t3) -> "\n" ^ ind ^ "if " ^ (toString t1 (n + 1)) ^ "then\n" ^ 
(toString t2 (n + 1)) ^ "\n" ^ ind ^ "else\n" ^ (toString t3 (n + 1)) ^ "\n"
  | Iszero t1 -> ind ^ "Iszero " ^ (toString t1 (n + 1)) ^ " "
  | Pred t1 -> "Pred " ^ (toString t1 (n + 1)) ^ " "
  | Succ t1 -> "Succ " ^ (toString t1 (n + 1)) ^ " "
  | None -> "NONE"
;;

let affiche prop = 
  print_endline(toString prop 0);;
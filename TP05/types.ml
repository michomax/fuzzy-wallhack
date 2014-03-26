(*Type Lambda-calcul*)
type typage = 
  | Bool
  | Nat
;;

type term = 
  | Var of string
  | Lambda of string * typage * term
  | App of term * term
  | True (* Constante Vrai *)
  | False (* Constante Faux *)
  | Cond of term * term * term (* Conditionnel *)
  | Zero (* Zero *)
  | Succ of term (* Successeur *)
  | Pred of term (* Predecesseur *)
  | Iszero of term (* Test Nul *)
  | None  
;;
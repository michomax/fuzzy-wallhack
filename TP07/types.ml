(*Type Lambda-calcul*)
type typage = 
  | Bool
  | Nat
  | TUnit
  | Fct of typage * typage
;;

type term = 
  | None
  | Unit
  | True (* Constante Vrai *)
  | False (* Constante Faux *)
  | Zero (* Zero *)
  | Iszero of term (* Test Nul *)
  | Var of string
  | Lambda of string * typage * term
  | App of term * term
  | Cond of term * term * term (* Conditionnel *)
  | Succ of term (* Successeur *)
  | Pred of term (* Predecesseur *)
;;
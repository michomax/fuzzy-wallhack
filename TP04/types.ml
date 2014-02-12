(*type term =
    | True (* Constante Vrai *)
    | False (* Constante Faux *)
    | Cond of term * term * term (* Conditionnel *)
    | Zero (* Zero *)
    | Succ of term (* Successeur *)
    | Pred of term (* Predecesseur *)
    | Iszero of term (* Test Nul *)
    | None
;;*)

(*Type Lambda-calcul*)
type term = 
  | Lambda
  | Var of string
  | Abs of Lambda * Var * term
  | App of term * term

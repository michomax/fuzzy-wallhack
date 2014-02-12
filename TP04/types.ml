(*Type Lambda-calcul*)
type term = 
  | Var of string
  | Abs of Var * term
  | App of term * term

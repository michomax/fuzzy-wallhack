type term =
    | True (* Constante Vrai *)
    | False (* Constante Faux *)
    | Cond of term * term * term (* Conditionnel *)
    | Zero (* Zero *)
    | Succ of term (* Successeur *)
    | Pred of term (* Predecesseur *)
    | Iszero of term (* Test Nul *)
;;

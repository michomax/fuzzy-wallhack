open Types;;
open Eval;;

type optType = 
	| Some_type of typage 
	| No_type of string
;;

let istypable t =
	match t with
		| Some_type tt -> true
		| _ -> false
;;

let rec typecheck ty =
	match 
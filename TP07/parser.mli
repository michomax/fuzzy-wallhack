type token =
  | Llet
  | Llambda
  | Leol
  | Llpar
  | Lrpar
  | Ldot
  | Leq
  | Lif
  | Lthen
  | Lelse
  | Lzero
  | Lsucc
  | Lpred
  | Liszero
  | Ltrue
  | Lfalse
  | Ltype
  | Lfleche
  | Lbool
  | Lnat
  | Ltypage
  | Lvar of (string)

val line :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Types.term

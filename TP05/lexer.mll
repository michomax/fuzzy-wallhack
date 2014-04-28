(********************* lexer.mll *****************************)

{
  open Parser ;;
  exception Eof;;
}
rule lexer = parse       (* nom de la fonction construite par ocamllex pour *)
                         (* détecter des lexèmes dans un flux de caractères *)

  | [' ' '\t']                      {lexer lexbuf}                   
  | ";;"                            {Leol}  
  | [' ']*'('[' ']*                 {Llpar}                          
  | [' ']*')'[' ']*                 {Lrpar}
  | "lambda"                        {Llambda}
  | '='                             {Leq}
  | ':'                             {Ltypage}
  | "->"                            {Lfleche}
  | "Bool"                          {Lbool}
  | "bool"                          {Lbool}
  | "Nat"                           {Lnat}
  | "nat"                           {Lnat}
  | "let"                           {Llet}
  | '.'                             {Ldot}
  | "true"                          {Ltrue}
  | "false"                         {Lfalse}
  | "if"                            {Lif}
  | "then"                          {Lthen}
  | "else"                          {Lelse}
  | "0"                             {Lzero}
  | "succ"                          {Lsucc}
  | "pred"                          {Lpred}
  | "iszero"                        {Liszero}
  | '#'[^'\n']*'\n'                 {lexer lexbuf}
  | ['a'-'z' 'A'-'Z' '0' - '9']+    {Lvar (Lexing.lexeme lexbuf)}
  | [' ']*'\n'                      {lexer lexbuf}   
  | eof                             {raise Eof}
  | _ as c                          {(Printf.printf"Erreur : %c" c);Leol}
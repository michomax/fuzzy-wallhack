(********************* lexer.mll *****************************)

{
  open Parser ;;
  exception Eof;;
}
rule lexer = parse                       (* nom de la fonction construite par ocamllex pour *)
                                         (* détecter des lexèmes dans un flux de caractères *)

  | [' ' '\t']                      {lexer lexbuf}                   
  | [' ']*";;"[' ']*'\n'            {Leol}  
  | [' ']*'('[' ']*                 {Llpar}                          
  | [' ']*')'[' ']*                 {Lrpar}
  | "lambda"                        {Llambda}
  | '='                             {Leq}
  | "let"                           {Llet}
  | '.'                             {Ldot}
  | '#'[^'\n']*'\n'                 {lexer lexbuf}
  | ['a'-'z' 'A'-'Z' '0' - '9']+    {Lvar (Lexing.lexeme lexbuf)}
  | [' ']*'\n'                      {lexer lexbuf}   
  | eof                             {raise Eof}
  | _ as c                          {(Printf.printf"Erreur : %c" c);Leol}
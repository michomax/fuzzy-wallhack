(********************* lexer.mll *****************************)

{
  open Parser ;;
}
rule lexer = parse                       (* nom de la fonction construite par ocamllex pour *)
                                         (* détecter des lexèmes dans un flux de caractères *)

  | [' ' '\t']                      {lexer lexbuf}                   
  | '\n'                            {Leol}                           
  | '('                             {Llpar}                          
  | ')'                             {Lrpar}
  | 'Lambda'                        {Llambda}
  | "let "[^ '\n']                  {Llet}
  | '#'[^'\n']*'\n'                 {Llexer lexbuf}
  | ['a'-'z''A'-'Z''0'-'9''_']+     {{Lvar (Lexing.lexeme lexbuf)}}
  | ['a'-'z' 'A'-'Z']+              {Lident (Lexing.lexeme lexbuf)}
  | _ as c                          {(Printf.printf"Erreur : %c" c);Leol}
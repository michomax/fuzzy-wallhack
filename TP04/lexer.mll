(********************* lexer.mll *****************************)

{
  open Parser ;;
}
rule lexer = parse                       (* nom de la fonction construite par ocamllex pour *)
                                         (* détecter des lexèmes dans un flux de caractères *)

  | [' ' '\t']                {lexer lexbuf}   (* lexème; la fonction est rappelée récursivement *)
  | '#'.*'\n'                 {Lcom}           (* Commentaire *)
  | '\n'                      {Leol}           (* renvoi d'une constante designant *)
  | '('                       {Llpar}          (* la sorte de lexème reconnu *)
  | ')'                       {Lrpar}
  | 'Lambda'                  {Lbda}
  | "let "[^ '\n']            {}               (* Detection d'alias *)
  | [ ]*'='[ ]*[^' ''\n']     {}               (* Lambda terme après un alias *)
  | ['a'-'z' 'A'-'Z']+'.'     {Lvar}
  | ['a'-'z' 'A'-'Z']+  {Lident (Lexing.lexeme lexbuf)}
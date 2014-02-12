(********************* lexer.mll *****************************)

{
  open Parser ;;
}
rule lexer = parse                       (* nom de la fonction construite par ocamllex pour *)
                                         (* détecter des lexèmes dans un flux de caractères *)

  | [' ' '\t']          {lexer lexbuf}   (* lexème; la fonction est rappelée récursivement *)

  | '\n'                {Leol}           (* renvoi d'une constante designant *)
  | '('                 {Llpar}          (* la sorte de lexème reconnu *)
  | ')'                 {Lrpar}
  | "true"              {Ltrue}
  | "false"             {Lfalse}
  | "if"                {Lif}
  | "then"              {Lthen}
  | "else"              {Lelse}
  | "0"                 {Lzero}
  | "succ"              {Lsucc}
  | "pred"              {Lpred}
  | "iszero" 		{Liszero}
  | ['a'-'z' 'A'-'Z']+  {Lident (Lexing.lexeme lexbuf)}
                                         (* dans le cas d'un identificateur, on renvoie aussi*)
                                         (* la chaîne de caractères correspondante *)

let selectFile =
    match (Array.length Sys.argv) with
      | 1 -> Lexing.from_channel stdin
      | 2 -> Lexing.from_channel (open_in (Sys.argv.(1)))
      | _ -> failwith "Trop de paramètres"
in
let rec loop () =
  try
    let a = Eval.eval (Parser.line Lexer.lexer (selectFile)
    ) in
    Output.affichage a;
    loop ()
  with Lexer.Eof -> 1
    (*close_in selectFile*)
in
  loop ();; 



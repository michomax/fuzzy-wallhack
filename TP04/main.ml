
let rec loop selectFile =
  try
    let a = Eval.examine (Parser.line Lexer.lexer ((Lexing.from_channel selectFile))
    ) in
    Output.print_term a;
    loop selectFile
  with Lexer.Eof -> 
    close_in selectFile;
;;

let selectFile =
    match (Array.length Sys.argv) with
      | 1 -> stdin
      | 2 -> open_in Sys.argv.(1)
      | _ -> failwith "Trop de paramètres"
in
loop selectFile;; 
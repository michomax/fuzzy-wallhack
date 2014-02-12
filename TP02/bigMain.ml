let rec loop () =
  try
    print_string ">>> " ; 
    BigOutput.affiche (BigEval.eval (Parser.line Lexer.lexer (
      (Lexing.from_string (read_line () ^"\n")))
    )) ;
    loop ()
  with End_of_file -> ()
;;

let _ = loop () ;; 

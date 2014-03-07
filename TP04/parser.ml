type token =
  | Llet
  | Lterm
  | Llambda
  | Lcom
  | Lvar
  | Leol
  | Lident of (string)

open Parsing;;
let _ = parse_error;;
# 2 "parser.mly"
  open Types ;;
# 15 "parser.ml"
let yytransl_const = [|
  257 (* Llet *);
  258 (* Lterm *);
  259 (* Llambda *);
  260 (* Lcom *);
  261 (* Lvar *);
  262 (* Leol *);
    0|]

let yytransl_block = [|
  263 (* Lident *);
    0|]

let yylhs = "\255\255\
\001\000\001\000\002\000\002\000\006\000\006\000\004\000\004\000\
\005\000\005\000\003\000\000\000"

let yylen = "\002\000\
\002\000\002\000\001\000\002\000\001\000\003\000\004\000\001\000\
\001\000\002\000\004\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\000\000\005\000\000\000\012\000\000\000\
\000\000\003\000\000\000\000\000\000\000\000\000\000\000\001\000\
\002\000\004\000\000\000\000\000\000\000\006\000\011\000\007\000"

let yydgoto = "\002\000\
\007\000\008\000\009\000\010\000\011\000\012\000"

let yysindex = "\004\000\
\225\255\000\000\255\254\000\255\000\000\224\255\000\000\004\255\
\005\255\000\000\224\255\000\000\207\255\223\255\229\255\000\000\
\000\000\000\000\000\000\224\255\224\255\000\000\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\216\255\000\000\000\000\000\000\000\000\
\000\000\000\000\218\255\000\000\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\254\255\000\000\005\000\000\000\006\000"

let yytablesize = 232
let yytable = "\009\000\
\008\000\010\000\008\000\015\000\001\000\013\000\014\000\006\000\
\006\000\016\000\017\000\020\000\021\000\022\000\000\000\018\000\
\019\000\023\000\024\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\009\000\000\000\010\000\008\000\009\000\008\000\
\010\000\003\000\004\000\004\000\000\000\000\000\005\000\005\000"

let yycheck = "\040\000\
\041\000\040\000\041\000\006\000\001\000\007\001\007\001\040\000\
\040\000\006\001\006\001\061\000\046\000\041\000\255\255\011\000\
\011\000\020\000\021\000\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\003\001\255\255\003\001\006\001\007\001\006\001\
\007\001\001\001\003\001\003\001\255\255\255\255\007\001\007\001"

let yynames_const = "\
  Llet\000\
  Lterm\000\
  Llambda\000\
  Lcom\000\
  Lvar\000\
  Leol\000\
  "

let yynames_block = "\
  Lident\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'term) in
    Obj.repr(
# 20 "parser.mly"
                 (_1)
# 141 "parser.ml"
               : Types.term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'affect) in
    Obj.repr(
# 21 "parser.mly"
                   ()
# 148 "parser.ml"
               : Types.term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'functerm) in
    Obj.repr(
# 23 "parser.mly"
                 (_1)
# 155 "parser.ml"
               : 'term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'appterm) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'functerm) in
    Obj.repr(
# 24 "parser.mly"
                         (App (_1, _2))
# 163 "parser.ml"
               : 'term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 26 "parser.mly"
                   (Var (_1))
# 170 "parser.ml"
               : 'elemterm))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'term) in
    Obj.repr(
# 27 "parser.mly"
                         (_2)
# 177 "parser.ml"
               : 'elemterm))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'term) in
    Obj.repr(
# 29 "parser.mly"
                                    (Lambda (_2, _4))
# 185 "parser.ml"
               : 'functerm))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'elemterm) in
    Obj.repr(
# 30 "parser.mly"
                     (_1)
# 192 "parser.ml"
               : 'functerm))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'elemterm) in
    Obj.repr(
# 32 "parser.mly"
                    (_1)
# 199 "parser.ml"
               : 'appterm))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'appterm) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'elemterm) in
    Obj.repr(
# 33 "parser.mly"
                            (App (_1, _2))
# 207 "parser.ml"
               : 'appterm))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'term) in
    Obj.repr(
# 36 "parser.mly"
                               ()
# 215 "parser.ml"
               : 'affect))
(* Entry line *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let line (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Types.term)
;;

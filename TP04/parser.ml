type token =
  | Llet
  | Lterm
  | Llambda
  | Leol
  | Llpar
  | Lrpar
  | Ldot
  | Leq
  | Lvar of (string)

open Parsing;;
let _ = parse_error;;
# 2 "parser.mly"
  open Types ;;
  open Tools ;;
# 18 "parser.ml"
let yytransl_const = [|
  257 (* Llet *);
  258 (* Lterm *);
  259 (* Llambda *);
  260 (* Leol *);
  261 (* Llpar *);
  262 (* Lrpar *);
  263 (* Ldot *);
  264 (* Leq *);
    0|]

let yytransl_block = [|
  265 (* Lvar *);
    0|]

let yylhs = "\255\255\
\001\000\001\000\002\000\002\000\004\000\004\000\005\000\005\000\
\006\000\006\000\003\000\000\000"

let yylen = "\002\000\
\002\000\002\000\001\000\002\000\004\000\001\000\001\000\002\000\
\001\000\003\000\004\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\000\000\000\000\009\000\012\000\000\000\
\000\000\003\000\000\000\000\000\000\000\000\000\000\000\001\000\
\002\000\004\000\000\000\000\000\000\000\010\000\011\000\005\000"

let yydgoto = "\002\000\
\007\000\008\000\009\000\010\000\011\000\012\000"

let yysindex = "\005\000\
\000\255\000\000\254\254\001\255\255\254\000\000\000\000\018\255\
\019\255\000\000\255\254\000\000\017\255\020\255\022\255\000\000\
\000\000\000\000\000\000\255\254\255\254\000\000\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\008\255\000\000\000\000\000\000\000\000\
\000\000\000\000\015\255\000\000\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\251\255\000\000\015\000\000\000\018\000"

let yytablesize = 29
let yytable = "\015\000\
\003\000\004\000\004\000\005\000\005\000\001\000\013\000\006\000\
\006\000\014\000\007\000\006\000\007\000\006\000\023\000\024\000\
\007\000\008\000\006\000\008\000\006\000\016\000\017\000\008\000\
\020\000\018\000\021\000\022\000\019\000"

let yycheck = "\005\000\
\001\001\003\001\003\001\005\001\005\001\001\000\009\001\009\001\
\009\001\009\001\003\001\004\001\005\001\006\001\020\000\021\000\
\009\001\003\001\004\001\005\001\006\001\004\001\004\001\009\001\
\008\001\011\000\007\001\006\001\011\000"

let yynames_const = "\
  Llet\000\
  Lterm\000\
  Llambda\000\
  Leol\000\
  Llpar\000\
  Lrpar\000\
  Ldot\000\
  Leq\000\
  "

let yynames_block = "\
  Lvar\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'term) in
    Obj.repr(
# 23 "parser.mly"
                 (_1)
# 98 "parser.ml"
               : Types.term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'affect) in
    Obj.repr(
# 24 "parser.mly"
                   (_1)
# 105 "parser.ml"
               : Types.term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'functerm) in
    Obj.repr(
# 26 "parser.mly"
                 (_1)
# 112 "parser.ml"
               : 'term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'appterm) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'functerm) in
    Obj.repr(
# 27 "parser.mly"
                         (App (_1, _2))
# 120 "parser.ml"
               : 'term))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'term) in
    Obj.repr(
# 29 "parser.mly"
                                   (Lambda (_2, _4))
# 128 "parser.ml"
               : 'functerm))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'elemterm) in
    Obj.repr(
# 30 "parser.mly"
                     (_1)
# 135 "parser.ml"
               : 'functerm))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'elemterm) in
    Obj.repr(
# 32 "parser.mly"
                    (_1)
# 142 "parser.ml"
               : 'appterm))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'appterm) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'elemterm) in
    Obj.repr(
# 33 "parser.mly"
                            (App (_1, _2))
# 150 "parser.ml"
               : 'appterm))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 35 "parser.mly"
                 (Var (_1))
# 157 "parser.ml"
               : 'elemterm))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'term) in
    Obj.repr(
# 36 "parser.mly"
                             (_2)
# 164 "parser.ml"
               : 'elemterm))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'term) in
    Obj.repr(
# 38 "parser.mly"
                             ((Tools.affect _2 _4))
# 172 "parser.ml"
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

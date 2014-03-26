type token =
  | Llet
  | Lterm
  | Llambda
  | Leol
  | Llpar
  | Lrpar
  | Ldot
  | Leq
  | Lif
  | Lthen
  | Lelse
  | Lzero
  | Lsucc
  | Lpred
  | Liszero
  | Ltrue
  | Lfalse
  | Lvar of (string)

open Parsing;;
let _ = parse_error;;
# 2 "parser.mly"
  open Types ;;
  open Tools ;;
# 27 "parser.ml"
let yytransl_const = [|
  257 (* Llet *);
  258 (* Lterm *);
  259 (* Llambda *);
  260 (* Leol *);
  261 (* Llpar *);
  262 (* Lrpar *);
  263 (* Ldot *);
  264 (* Leq *);
  265 (* Lif *);
  266 (* Lthen *);
  267 (* Lelse *);
  268 (* Lzero *);
  269 (* Lsucc *);
  270 (* Lpred *);
  271 (* Liszero *);
  272 (* Ltrue *);
  273 (* Lfalse *);
    0|]

let yytransl_block = [|
  274 (* Lvar *);
    0|]

let yylhs = "\255\255\
\001\000\001\000\002\000\002\000\002\000\004\000\004\000\005\000\
\005\000\007\000\007\000\003\000\006\000\006\000\006\000\006\000\
\006\000\006\000\006\000\000\000"

let yylen = "\002\000\
\002\000\002\000\001\000\002\000\001\000\004\000\001\000\001\000\
\002\000\001\000\003\000\004\000\006\000\002\000\002\000\002\000\
\001\000\001\000\001\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\019\000\000\000\
\000\000\000\000\017\000\018\000\010\000\020\000\000\000\000\000\
\003\000\000\000\005\000\000\000\000\000\000\000\000\000\000\000\
\014\000\015\000\016\000\001\000\002\000\004\000\000\000\000\000\
\000\000\011\000\000\000\012\000\006\000\000\000\000\000\013\000"

let yydgoto = "\002\000\
\014\000\015\000\016\000\017\000\018\000\019\000\020\000"

let yysindex = "\001\000\
\005\255\000\000\245\254\250\254\026\255\026\255\000\000\026\255\
\026\255\026\255\000\000\000\000\000\000\000\000\009\255\011\255\
\000\000\006\255\000\000\000\000\008\255\018\255\020\255\022\255\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\026\255\
\026\255\000\000\026\255\000\000\000\000\025\255\026\255\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\042\255\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\051\255\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\251\255\000\000\015\000\000\000\000\000\019\000"

let yytablesize = 69
let yytable = "\023\000\
\024\000\001\000\025\000\026\000\027\000\003\000\021\000\004\000\
\004\000\005\000\005\000\022\000\028\000\006\000\029\000\032\000\
\007\000\008\000\009\000\010\000\011\000\012\000\013\000\013\000\
\033\000\034\000\036\000\037\000\004\000\038\000\005\000\035\000\
\030\000\040\000\006\000\039\000\031\000\007\000\008\000\009\000\
\010\000\011\000\012\000\013\000\008\000\007\000\008\000\007\000\
\000\000\000\000\000\000\007\000\007\000\009\000\007\000\009\000\
\007\000\000\000\000\000\008\000\007\000\007\000\000\000\000\000\
\000\000\000\000\000\000\000\000\009\000"

let yycheck = "\005\000\
\006\000\001\000\008\000\009\000\010\000\001\001\018\001\003\001\
\003\001\005\001\005\001\018\001\004\001\009\001\004\001\008\001\
\012\001\013\001\014\001\015\001\016\001\017\001\018\001\018\001\
\007\001\006\001\032\000\033\000\003\001\035\000\005\001\010\001\
\018\000\039\000\009\001\011\001\018\000\012\001\013\001\014\001\
\015\001\016\001\017\001\018\001\003\001\004\001\005\001\006\001\
\255\255\255\255\255\255\010\001\011\001\003\001\004\001\005\001\
\006\001\255\255\255\255\018\001\010\001\011\001\255\255\255\255\
\255\255\255\255\255\255\255\255\018\001"

let yynames_const = "\
  Llet\000\
  Lterm\000\
  Llambda\000\
  Leol\000\
  Llpar\000\
  Lrpar\000\
  Ldot\000\
  Leq\000\
  Lif\000\
  Lthen\000\
  Lelse\000\
  Lzero\000\
  Lsucc\000\
  Lpred\000\
  Liszero\000\
  Ltrue\000\
  Lfalse\000\
  "

let yynames_block = "\
  Lvar\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'term) in
    Obj.repr(
# 33 "parser.mly"
                 (_1)
# 143 "parser.ml"
               : Types.term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'affect) in
    Obj.repr(
# 34 "parser.mly"
                   (_1)
# 150 "parser.ml"
               : Types.term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'functerm) in
    Obj.repr(
# 36 "parser.mly"
                 (_1)
# 157 "parser.ml"
               : 'term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'appterm) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'functerm) in
    Obj.repr(
# 37 "parser.mly"
                         (App (_1, _2))
# 165 "parser.ml"
               : 'term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'prop) in
    Obj.repr(
# 38 "parser.mly"
            (_1)
# 172 "parser.ml"
               : 'term))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'term) in
    Obj.repr(
# 40 "parser.mly"
                                   (Lambda (_2, _4))
# 180 "parser.ml"
               : 'functerm))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'elemterm) in
    Obj.repr(
# 41 "parser.mly"
                     (_1)
# 187 "parser.ml"
               : 'functerm))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'elemterm) in
    Obj.repr(
# 44 "parser.mly"
                    (_1)
# 194 "parser.ml"
               : 'appterm))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'appterm) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'elemterm) in
    Obj.repr(
# 45 "parser.mly"
                            (App (_1, _2))
# 202 "parser.ml"
               : 'appterm))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 47 "parser.mly"
                 (Var (_1))
# 209 "parser.ml"
               : 'elemterm))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'term) in
    Obj.repr(
# 48 "parser.mly"
                             (_2)
# 216 "parser.ml"
               : 'elemterm))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'term) in
    Obj.repr(
# 50 "parser.mly"
                             ((Tools.affect _2 _4))
# 224 "parser.ml"
               : 'affect))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : 'term) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'term) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'term) in
    Obj.repr(
# 53 "parser.mly"
                                     (Cond (_2, _4, _6))
# 233 "parser.ml"
               : 'prop))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'term) in
    Obj.repr(
# 54 "parser.mly"
                       (Succ _2)
# 240 "parser.ml"
               : 'prop))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'term) in
    Obj.repr(
# 55 "parser.mly"
                        (Pred _2)
# 247 "parser.ml"
               : 'prop))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'term) in
    Obj.repr(
# 56 "parser.mly"
                        (Iszero _2)
# 254 "parser.ml"
               : 'prop))
; (fun __caml_parser_env ->
    Obj.repr(
# 57 "parser.mly"
                        (True)
# 260 "parser.ml"
               : 'prop))
; (fun __caml_parser_env ->
    Obj.repr(
# 58 "parser.mly"
                        (False)
# 266 "parser.ml"
               : 'prop))
; (fun __caml_parser_env ->
    Obj.repr(
# 59 "parser.mly"
                        (Zero)
# 272 "parser.ml"
               : 'prop))
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

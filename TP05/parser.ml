type token =
  | Llet
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
  | Ltype
  | Lfleche
  | Lbool
  | Lnat
  | Ltypage
  | Lvar of (string)

open Parsing;;
let _ = parse_error;;
# 2 "parser.mly"
  open Types ;;
  open Tools ;;
# 31 "parser.ml"
let yytransl_const = [|
  257 (* Llet *);
  258 (* Llambda *);
  259 (* Leol *);
  260 (* Llpar *);
  261 (* Lrpar *);
  262 (* Ldot *);
  263 (* Leq *);
  264 (* Lif *);
  265 (* Lthen *);
  266 (* Lelse *);
  267 (* Lzero *);
  268 (* Lsucc *);
  269 (* Lpred *);
  270 (* Liszero *);
  271 (* Ltrue *);
  272 (* Lfalse *);
  273 (* Ltype *);
  274 (* Lfleche *);
  275 (* Lbool *);
  276 (* Lnat *);
  277 (* Ltypage *);
    0|]

let yytransl_block = [|
  278 (* Lvar *);
    0|]

let yylhs = "\255\255\
\001\000\001\000\002\000\002\000\002\000\004\000\004\000\007\000\
\007\000\009\000\009\000\005\000\005\000\008\000\008\000\003\000\
\006\000\006\000\006\000\006\000\006\000\006\000\006\000\000\000"

let yylen = "\002\000\
\002\000\002\000\001\000\002\000\001\000\006\000\001\000\001\000\
\003\000\001\000\001\000\001\000\002\000\001\000\003\000\004\000\
\006\000\002\000\002\000\002\000\001\000\001\000\001\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\023\000\000\000\
\000\000\000\000\021\000\022\000\014\000\024\000\000\000\000\000\
\003\000\000\000\005\000\000\000\000\000\000\000\000\000\000\000\
\018\000\019\000\020\000\001\000\002\000\004\000\000\000\000\000\
\000\000\015\000\000\000\016\000\010\000\011\000\000\000\000\000\
\000\000\000\000\000\000\000\000\006\000\009\000\017\000"

let yydgoto = "\002\000\
\014\000\015\000\016\000\017\000\018\000\019\000\039\000\020\000\
\040\000"

let yysindex = "\001\000\
\006\255\000\000\240\254\250\254\030\255\030\255\000\000\030\255\
\030\255\030\255\000\000\000\000\000\000\000\000\012\255\020\255\
\000\000\007\255\000\000\000\000\017\255\004\255\021\255\022\255\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\030\255\
\249\254\000\000\030\255\000\000\000\000\000\000\027\255\018\255\
\025\255\030\255\249\254\030\255\000\000\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\045\255\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\054\255\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\034\255\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\251\255\000\000\033\000\000\000\000\000\010\000\042\000\
\000\000"

let yytablesize = 76
let yytable = "\023\000\
\024\000\001\000\025\000\026\000\027\000\021\000\003\000\004\000\
\004\000\005\000\005\000\037\000\038\000\006\000\028\000\022\000\
\007\000\008\000\009\000\010\000\011\000\012\000\029\000\032\000\
\033\000\034\000\036\000\013\000\013\000\041\000\035\000\004\000\
\042\000\005\000\044\000\043\000\045\000\006\000\047\000\008\000\
\007\000\008\000\009\000\010\000\011\000\012\000\012\000\007\000\
\012\000\007\000\030\000\013\000\046\000\007\000\007\000\013\000\
\007\000\013\000\007\000\031\000\000\000\000\000\007\000\007\000\
\000\000\000\000\012\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\013\000"

let yycheck = "\005\000\
\006\000\001\000\008\000\009\000\010\000\022\001\001\001\002\001\
\002\001\004\001\004\001\019\001\020\001\008\001\003\001\022\001\
\011\001\012\001\013\001\014\001\015\001\016\001\003\001\007\001\
\021\001\005\001\032\000\022\001\022\001\035\000\009\001\002\001\
\006\001\004\001\010\001\018\001\042\000\008\001\044\000\006\001\
\011\001\012\001\013\001\014\001\015\001\016\001\002\001\003\001\
\004\001\005\001\018\000\022\001\043\000\009\001\010\001\002\001\
\003\001\004\001\005\001\018\000\255\255\255\255\009\001\010\001\
\255\255\255\255\022\001\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\022\001"

let yynames_const = "\
  Llet\000\
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
  Ltype\000\
  Lfleche\000\
  Lbool\000\
  Lnat\000\
  Ltypage\000\
  "

let yynames_block = "\
  Lvar\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'term) in
    Obj.repr(
# 38 "parser.mly"
                 (_1)
# 162 "parser.ml"
               : Types.term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'affect) in
    Obj.repr(
# 39 "parser.mly"
                   (_1)
# 169 "parser.ml"
               : Types.term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'functerm) in
    Obj.repr(
# 41 "parser.mly"
                 (_1)
# 176 "parser.ml"
               : 'term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'appterm) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'functerm) in
    Obj.repr(
# 42 "parser.mly"
                         (App (_1, _2))
# 184 "parser.ml"
               : 'term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'prop) in
    Obj.repr(
# 43 "parser.mly"
            (_1)
# 191 "parser.ml"
               : 'term))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'typage) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'term) in
    Obj.repr(
# 45 "parser.mly"
                                                  (Lambda (_2, _4, _6))
# 200 "parser.ml"
               : 'functerm))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'elemterm) in
    Obj.repr(
# 46 "parser.mly"
                     (_1)
# 207 "parser.ml"
               : 'functerm))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'typ) in
    Obj.repr(
# 48 "parser.mly"
             (_1)
# 214 "parser.ml"
               : 'typage))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'typ) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'typage) in
    Obj.repr(
# 49 "parser.mly"
                            (Fct (_1, _3))
# 222 "parser.ml"
               : 'typage))
; (fun __caml_parser_env ->
    Obj.repr(
# 51 "parser.mly"
            (Bool)
# 228 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 52 "parser.mly"
           (Nat)
# 234 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'elemterm) in
    Obj.repr(
# 54 "parser.mly"
                    (_1)
# 241 "parser.ml"
               : 'appterm))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'appterm) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'elemterm) in
    Obj.repr(
# 55 "parser.mly"
                            (App (_1, _2))
# 249 "parser.ml"
               : 'appterm))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 57 "parser.mly"
                 (Var (_1))
# 256 "parser.ml"
               : 'elemterm))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'term) in
    Obj.repr(
# 58 "parser.mly"
                             (_2)
# 263 "parser.ml"
               : 'elemterm))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'term) in
    Obj.repr(
# 60 "parser.mly"
                             ((Tools.affect _2 _4))
# 271 "parser.ml"
               : 'affect))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : 'term) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'term) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'term) in
    Obj.repr(
# 63 "parser.mly"
                                      (Cond (_2, _4, _6))
# 280 "parser.ml"
               : 'prop))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'term) in
    Obj.repr(
# 64 "parser.mly"
                        (Succ _2)
# 287 "parser.ml"
               : 'prop))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'term) in
    Obj.repr(
# 65 "parser.mly"
                        (Pred _2)
# 294 "parser.ml"
               : 'prop))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'term) in
    Obj.repr(
# 66 "parser.mly"
                        (Iszero _2)
# 301 "parser.ml"
               : 'prop))
; (fun __caml_parser_env ->
    Obj.repr(
# 67 "parser.mly"
                        (True)
# 307 "parser.ml"
               : 'prop))
; (fun __caml_parser_env ->
    Obj.repr(
# 68 "parser.mly"
                        (False)
# 313 "parser.ml"
               : 'prop))
; (fun __caml_parser_env ->
    Obj.repr(
# 69 "parser.mly"
                        (Zero)
# 319 "parser.ml"
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

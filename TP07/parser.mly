%{
  open Types ;;
  open Tools ;;
%}

%token Llet

%token Llambda
%token Leol
%token Llpar
%token Lrpar
%token Ldot
%token Leq

%token Lif
%token Lthen
%token Lelse
%token Lzero
%token Lsucc
%token Lpred
%token Liszero
%token Ltrue
%token Lfalse

%token Ltype
%token Lfleche
%token Lbool
%token Lnat
%token Ltypage

%token <string> Lvar            /* type de l'attribut fourni par le lexer */

%start line                      /* axiome */
%type <Types.term> line          /* type de l'attribut de l'axiome */ 

%%

line : term Leol {$1}
     | affect Leol {$1}
       
term : functerm  {$1}
     | appterm functerm  {App ($1, $2)}
     | prop {$1}
     
functerm : Llambda Lvar Ltypage typage Ldot term  {Lambda ($2, $4, $6)}
         | elemterm  {$1}
         
typage : typ {$1}
       | typ Lfleche typage {Fct ($1, $3)}

typ : Lbool {Bool}
    | Lnat {Nat}
         
appterm : elemterm  {$1}
        | appterm elemterm  {App ($1, $2)}  
        
elemterm : Lvar  {Var ($1)}
         | Llpar term Lrpar  {$2}             

affect : Llet Lvar Leq term  {(Tools.affect $2 $4)}

prop: 
  | Lif term Lthen term Lelse term    {Cond ($2, $4, $6)}
  | Lsucc term          {Succ $2}
  | Lpred term          {Pred $2}
  | Liszero term        {Iszero $2}
  | Ltrue               {True}
  | Lfalse              {False}
  | Lzero               {Zero}
%%
%{
  open Types ;;
  open Tools ;;
%}

%token Llet
%token Lterm

%token Llambda
%token Leol
%token Llpar
%token Lrpar
%token Ldot
%token Leq

%token <string> Lvar            /* type de l'attribut fourni par le lexer */

%start line                      /* axiome */
%type <Types.term> line          /* type de l'attribut de l'axiome */ 

%%

line : term Leol {$1}
     | affect Leol {$1}
       
term : functerm  {$1}
     | appterm functerm  {App ($1, $2)}
     
functerm : Llambda Lvar Ldot term  {Lambda ($2, $4)}
         | elemterm  {$1}

appterm : elemterm  {$1}
        | appterm elemterm  {App ($1, $2)}  
        
elemterm : Lvar  {Var ($1)}
         | Llpar term Lrpar  {$2}             

affect : Llet Lvar Leq term  {(Tools.affect $2 $4)}

%%
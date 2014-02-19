%{
  open Types ;;
%}

%token Llet
%token Lterm

%token Llambda
%token Lcom
%token Lvar
%token Leol

%token <string> Lident            /* type de l'attribut fourni par le lexer */

%start line                      /* axiome */
%type <Types.term> line          /* type de l'attribut de l'axiome */ 

%%

line : term Leol {$1}
     | affect Leol {}
       
term : functerm  {$1}
     | appterm functerm  {App ($1, $2)}
     
functerm : Llambda Lident '.' term  {Lambda ($2, $4)}
         | elemterm  {$1}

appterm : elemterm  {$1}
        | appterm elemterm  {App ($1, $2)}  
        
elemterm : Lident  {Var ($1)}
         | '(' term ')'  {$2}             

affect : Llet Lident '=' term  {}

%%
%{
  open Types ;;
%}

%token Llet
%token Lterm

%token Llambda
%token Lcom
%token Lvar
%token Leol
%token Leof

%token <string> Lident            /* type de l'attribut fourni par le lexer */

%start text                      /* axiome */
%type <Types.term> text           /* type de l'attribut de l'axiome */ 

%%

text : line text {$1}
     | {}

line : term Leol {$1}
     | term Leof {$1}
     | affect Leol {}
       
term : functerm  {$1}
     | appterm functerm  {App ($1, $2)}
     
appterm : elemterm  {$1}
        | appterm elemterm  {App ($1, $2)}        
        
functerm : Llambda Lident '.' term  {Lambda ($2, $4)}
         | elemterm  {$1}
         
elemterm : Lident  {Var ($1)}
         | '(' term ')'  {$2}

affect : 
       | Llet '=' term  {$1}
       | term  {$1 /*tooooooools*/}
       
%%
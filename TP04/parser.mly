%{
  open Types ;;
%}

%token Llet
%token Lterm

%token Lbda
%token Lcom
%token Lvar

%token <string> Lident            /* type de l'attribut fourni par le lexer */

%start line                       /* axiome */
%type <Types.term> line           /* type de l'attribut de l'axiome */ 

%%


       
term : functerm
     | appterm functerm
     
     
appterm : elemterm
        | appterm elemterm
        
elemterm : id
         | '(' term ')'
         
functerm : lambda id '.' term
         | elemterm
        
affect : 
       | Llet '=' term
       | term
       
%%
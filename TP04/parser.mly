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

    
affect : 
       | Llet '=' term
       | term
       
term : 
     | functerm
     | appterm 
    
%%
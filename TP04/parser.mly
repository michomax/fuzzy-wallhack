%{
  open Types ;;
%}

%token Leol
%token Llpar
%token Lrpar

%token Lif
%token Lthen
%token Lelse
%token Lzero
%token Lsucc
%token Lpred
%token Liszero

%token Ltrue
%token Lfalse
%token <string> Lident            /* type de l'attribut fourni par le lexer */

%start line                       /* axiome */
%type <Types.term> line    /* type de l'attribut de l'axiome */ 

%%

line :
  | prop Leol            {$1}  
  
prop :
	| Lif prop Lthen prop Lelse prop		{Cond ($2, $4, $6)}
	| Lsucc prop					{Succ $2}
	| Lpred prop					{Pred $2}
	| Liszero prop					{Iszero $2}
	| Llpar prop Lrpar				{$2}
	| Ltrue						{True}
	| Lfalse					{False}
	| Lzero 					{Zero}
	
%%
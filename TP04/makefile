OCAMLC=ocamlc
OCAMLOPT=ocamlopt
OCAMLDEP=ocamldep
OCAMLLEX=ocamllex
OCAMLYACC=ocamlyacc

APPLI_OBJS=types.cmo tools.cmo lexer.cmo parser.cmo eval.cmo output.cmo main.cmo

BIG_OBJS=types.cmo lexer.cmo parser.cmo bigEval.cmo bigOutput.cmo bigMain.cmo

appli.exe : $(APPLI_OBJS)
	$(OCAMLC) -o appli.exe $(APPLI_OBJS)
	
big : bigAppli.exe
	
bigAppli.exe : $(BIG_OBJS)
	$(OCAMLC) -o bigAppli.exe $(BIG_OBJS)

types.cmo : types.ml
	$(OCAMLC) -c types.ml
	
tools.cmo : tools.ml
	$(OCAMLC) -c tools.ml

parser.ml : parser.mly
	$(OCAMLYACC) parser.mly

parser.mli : parser.mly
	$(OCAMLYACC) parser.mly

parser.cmi : parser.mli
	$(OCAMLC) -c parser.mli

parser.cmo : parser.ml
	$(OCAMLC) -c parser.ml

lexer.ml : lexer.mll
	$(OCAMLLEX) lexer.mll

lexer.cmo : lexer.ml parser.cmi
	$(OCAMLC) -c lexer.ml
	
output.cmo : output.ml
	$(OCAMLC) -c output.ml
	
bigEval.cmo : bigEval.ml
	$(OCAMLC) -c bigEval.ml
	
bigOutput.cmo : bigOutput.ml
	$(OCAMLC) -c bigOutput.ml
	
bigMain.cmo : bigMain.ml
	$(OCAMLC) -c bigMain.ml

eval.cmo : eval.ml
	$(OCAMLC) -c eval.ml

main.cmo : main.ml
	$(OCAMLC) -c main.ml

clean :
	rm types.cmo lexer.cmo parser.cmo eval.cmo output.cmo main.cmo types.cmi lexer.cmi parser.cmi  output.cmi eval.cmi main.cmi parser.mli parser.ml lexer.ml bigEval.cmo bigEval.cmi bigOutput.cmo bigOutput.cmi bigMain.cmo bigMain.cmi

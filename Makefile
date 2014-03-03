lex: compile
	@./dist/build/pow-lex/pow-lex

parse: ast_to_lisp compile
	@./dist/build/pow-parse/pow-parse | ./ast_to_lisp

compile:
	@cabal configure > /dev/null
	@cabal build > /dev/null

clean:
	cabal clean
	rm -f sdiff

ast_to_lisp:
	@raco exe ast_to_lisp.rkt


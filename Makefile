lexer: compile
	@./dist/build/pow-lexer/pow-lexer

parser: ast_to_lisp compile
	@./dist/build/pow-parser/pow-parser | ./ast_to_lisp

compile:
	@cabal configure > /dev/null
	@cabal build > /dev/null

clean:
	cabal clean
	rm -f sdiff

ast_to_lisp:
	@raco exe ast_to_lisp.rkt


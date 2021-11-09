CS 4110 Homework 7
==================

See the associated `instructions.pdf` for details on the assignment.


The Files
---------

- `ast.ml`:
  Defines the data types for the abstract syntax trees (ASTs) in our
  extended STLC language.

- `checker.ml`:
  The typechecker for the language. **This is the file you'll modify.**

- `eval.ml`:
  The interpreter for the AST.

- `main.ml`:
  The top-level code that parses in an input file, typechecks it, and runs the
  interpreter.

- `lexer.mll` and `parser.mly`:
  The lexer and parser specs for the language. These are fed through [OCaml's
  lexer and parser generators][ocamlyacc] to generate OCaml source code.

- `pprint.ml`:
  A pretty printer for the ASTs.

- `examples/`:
  Some example STLC programs. All of these are well typed, so please make sure
  that your typechecker accepts all of them.

[ocamlyacc]: http://caml.inria.fr/pub/docs/manual-ocaml/lexyacc.html


Compile
-------

If you didn't already, you'll need to [install OCaml][]. For example, use `brew install ocaml` on macOS, the [official OCaml installer][ocaml-win] on Windows, and your package manager on most Linuxes.

Type `make` at the command line to build the program. Compilation will produce
an executable file called `f`.

If you ever get a message like "(some file).cmo and (some other file).cmo make inconsistent assumptions over interface (something)", you probably changed the top-level declarations in some file. Just type `make clean` and then `make` again to rebuild from scratch.

[install OCaml]: https://ocaml.org/docs/install.html
[ocaml-win]: http://protz.github.io/ocaml-installer/


Execute
-------

Execute a program by typing `./stlc something.stlc`.
There's also a `-nocheck` flag that skips typechecking, which can be useful for running ill-typed programs.

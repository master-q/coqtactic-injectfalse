open Term
open Names
open Coqlib
open Proof_type

let ij_hello = Tacticals.tclIDTAC_MESSAGE (Pp.str "Hello, world!\n")

let injectfalse = Tactics.intro

TACTIC EXTEND _hello_
| [ "ij_hello" ] -> [ ij_hello ]
END

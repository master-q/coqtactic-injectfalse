open Term
open Names
open Coqlib
open Proof_type

let ij_hello = Tacticals.tclIDTAC_MESSAGE (Pp.str "Hello, world!\n")

let ij_intro = Tactics.intro

TACTIC EXTEND _ij_hello_
| [ "ij_hello" ] -> [ ij_hello ]
END

TACTIC EXTEND _ij_intro_
| [ "ij_intro" ] -> [ ij_intro ]
END

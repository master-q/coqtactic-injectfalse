open Evd
open Coqlib

let ij_hello = Tacticals.tclIDTAC_MESSAGE (Pp.str "Hello, world!\n")

let ij_intro = Tactics.intro

let ij_injectfalse goal_sigma =
  let gl = goal_sigma.it in
  let sigma' = Goal.V82.partial_solution goal_sigma.sigma gl (build_coq_False ()) in
  {it=[gl]; sigma = sigma'}

TACTIC EXTEND _ij_hello_
| [ "ij_hello" ] -> [ ij_hello ]
END

TACTIC EXTEND _ij_intro_
| [ "ij_intro" ] -> [ ij_intro ]
END

TACTIC EXTEND _ij_injectfalse_
| [ "ij_injectfalse" ] -> [ ij_injectfalse ]
END

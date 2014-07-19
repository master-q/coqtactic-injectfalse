(*i camlp4deps: "parsing/grammar.cma" i*)
(*i camlp4use: "pa_extend.cmp" i*)

type constr = Term.constr

let injectfalse = Tactics.intro

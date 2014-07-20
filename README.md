coqtactic-injectfalse
=====================

Custom tactic named "ij_injectfalse" injects False into the hypothesis.
But the proof occurs error on "Qed", because Coq check the soundness of the proof.

Coq is safe!

```
$ git clone git@github.com:master-q/coqtactic-injectfalse.git
$ cd coqtactic-injectfalse
$ make
$ ls injectfalse.*
injectfalse.cmi  injectfalse.cmo  injectfalse.cmxs*  injectfalse.ml4  injectfalse.o
$ coqtop
Welcome to Coq 8.4pl3 (January 2014)

Coq < Declare ML Module "injectfalse".
[Loading ML file injectfalse.cmxs ... done]

Coq < Theorem plus_0_r : forall n:nat, n + 0 = n.
1 subgoal

  ============================
   forall n : nat, n + 0 = n

plus_0_r < Proof.
1 subgoal

  ============================
   forall n : nat, n + 0 = n

plus_0_r < intros n.
1 subgoal  

  n : nat  
  ============================
   n + 0 = n

plus_0_r < destruct n as [| n'].
2 subgoals 

  ============================
   0 + 0 = 0

subgoal 2 is:
 S n' + 0 = S n'

plus_0_r < ij_injectfalse.
1 subgoal  

  n' : nat
  ============================
   S n' + 0 = S n'

plus_0_r < ij_injectfalse.
No more subgoals.

plus_0_r < Qed.
intros n.
destruct n as [| n'].
 ij_injectfalse.

 ij_injectfalse.

Error: In pattern-matching on term "n" the branch for constructor
"0" has type "Prop" which should be "0 + 0 = 0".
```

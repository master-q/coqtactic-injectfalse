Declare ML Module "injectfalse".

Theorem plus_O_n : forall n:nat, 0 + n = n.
Proof.
  ij_hello.
  ij_intro.
  reflexivity.
Qed.

Theorem plus_0_r : forall n:nat, n + 0 = n.
Proof.
  intros n. destruct n as [| n'].
  ij_injectfalse. ij_injectfalse.
Qed.

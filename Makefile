FILES := injectfalse.mli injectfalse.ml

ARGS := -R . injectfalse_tactic

.PHONY: coq clean doc

world: all doc

all: Makefile.coq
	$(MAKE) -f Makefile.coq all

install: Makefile.coq
	$(MAKE) -f Makefile.coq install

coq: Makefile.coq
	$(MAKE) -f Makefile.coq

doc: Makefile.coq
	$(MAKE) -f Makefile.coq html
	$(MAKE) -f Makefile.coq mlihtml

Makefile.coq: Makefile $(VS)
	coq_makefile $(ARGS) $(FILES) -o Makefile.coq

clean:: Makefile.coq
	$(MAKE) -f Makefile.coq clean
	rm -f Makefile.coq .depend

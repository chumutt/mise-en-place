LISP ?= ros -Q run

all: test

run:
	rlwrap $(LISP) --load run.lisp

build:
	$(LISP)	--non-interactive \
		--load mise-en-place.asd \
		--eval '(ql:quickload :mise-en-place)' \
		--eval '(asdf:make :mise-en-place)'

test:
	$(LISP) --non-interactive \
		--load run-tests.lisp

HAXE ?= haxe
NEKO ?= neko
BIN := bin/stakeholder.n
MAIN := Stakeholder

.PHONY: all compiler-proof analyze build test
all: build

compiler-proof:
	$(HAXE) --version
	$(NEKO) -version

analyze:
	$(HAXE) -cp src -main $(MAIN) -neko /tmp/haxe-stakeholder-analyze.n

build:
	mkdir -p bin
	$(HAXE) -cp src -main $(MAIN) -neko $(BIN)

test: build
	BIN=$(BIN) NEKO=$(NEKO) tests/test_cli.sh

HAXE ?= haxe
NEKO ?= neko
BIN := bin/stakeholder.n
MAIN := Stakeholder

.PHONY: all compiler-proof build test clean

all: build

compiler-proof:
	$(HAXE) --version
	$(NEKO) -version

build:
	mkdir -p bin
	$(HAXE) -cp src -main $(MAIN) -neko $(BIN)

test: build
	BIN=$(BIN) NEKO=$(NEKO) tests/test_cli.sh

clean:
	rm -rf bin

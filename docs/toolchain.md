# Toolchain

Haxe native validation uses the Homebrew `haxe` compiler and the bundled Neko target on arm64 macOS.

## Proven commands

- `haxe --version`
- `neko -version`
- `haxe -cp src -main Stakeholder -neko bin/stakeholder.n`
- `make compiler-proof`
- `make test`

Toolchain source: Homebrew bottled `haxe` 4.3.7_2 plus `neko` 2.4.1_1. Docker, Nix, and Haxelib packages are not required for the current deterministic first tranche.

> [!NOTE]
> This repository is AI-assisted and manually reviewed. Copyright may subsist only in human-authored portions to the extent applicable.

# haxe-stakeholder

Haxe implementation of the deterministic stakeholder tranche compiled to Neko bytecode.

Implemented: full classic-six + modern-core, grouped later-family fallbacks, deterministic normalized JSON, list-values, family focus, seeded output, and provider fail-fast.

Validation: python3 scripts/validate_scaffold.py, make analyze, make test, and docker build -t haxe-stakeholder .

GitHub CI is authoritative for native, Docker, type-check SAST, dependency, actionlint, contract, and workflow-security gates.

# First push families

This local tranche ports the deterministic family-focus contract into a Haxe runtime compiled to Neko bytecode.

| Family group | Haxe path | Source reference | Parity class |
| --- | --- | --- | --- |
| classic-six | `src/Stakeholder.hx` | current deterministic CLI family registry and smoke-contract shape | dedicated |
| modern-core | `src/Stakeholder.hx` | current deterministic CLI family registry and smoke-contract shape | dedicated |
| later families | `src/Stakeholder.hx` | grouped fallback policy in current deterministic repos | grouped fallback |
| CLI contract | `src/Stakeholder.hx`, `tests/test_cli.sh` | small-tranche smoke contract | deterministic |
| experimental provider | `src/Stakeholder.hx`, `tests/test_cli.sh` | fail-fast provider policy in current deterministic repos | explicit fail-fast |

Rust and Java remain canonical behavioral anchors; this Haxe tranche is local-only and native-validated.

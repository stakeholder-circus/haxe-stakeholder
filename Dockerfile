# Docker validation is intentionally deferred for this M1-safe local Haxe tranche.
# The native validation lane uses Homebrew Haxe plus Neko on macOS.
FROM alpine:3.20
CMD ["sh", "-c", "echo 'Docker validation deferred for haxe-stakeholder'; exit 1"]

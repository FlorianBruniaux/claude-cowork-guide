#!/usr/bin/env bash
# Regression checks for repository scripts. Run from the guide repository root.

set -euo pipefail

failures=0

stats_output=$(./scripts/update-stats.sh --check)
if grep -Fq 'Total Prompts: 70' <<<"$stats_output"; then
  printf 'PASS prompt count is based on numbered prompt headings\n'
else
  printf 'FAIL expected 70 numbered prompts, got:\n%s\n' "$stats_output" >&2
  failures=$((failures + 1))
fi

fixture_dir=$(mktemp -d)
trap 'rm -rf "$fixture_dir"' EXIT
mkdir -p "$fixture_dir/machine-readable"
cp VERSION "$fixture_dir/VERSION"
cp CLAUDE.md "$fixture_dir/CLAUDE.md"
cp README.md "$fixture_dir/README.md"
cp README.fr.md "$fixture_dir/README.fr.md"
cp MANIFEST.yaml "$fixture_dir/MANIFEST.yaml"
cp CITATION.cff "$fixture_dir/CITATION.cff"
cp llms.txt "$fixture_dir/llms.txt"
cp machine-readable/reference.yaml "$fixture_dir/machine-readable/reference.yaml"
cp machine-readable/llms.txt "$fixture_dir/machine-readable/llms.txt"
cp machine-readable/claude-cowork-releases.yaml "$fixture_dir/machine-readable/claude-cowork-releases.yaml"
sed -i.bak 's/version: "1\.12\.0"/version: "0.0.0"/' "$fixture_dir/MANIFEST.yaml"
rm "$fixture_dir/MANIFEST.yaml.bak"

if COWORK_ROOT="$fixture_dir" ./scripts/check-version-sync.sh >/dev/null 2>&1; then
  printf 'FAIL version checker accepted a stale VERSION consumer\n' >&2
  failures=$((failures + 1))
else
  printf 'PASS version checker rejects a stale VERSION consumer\n'
fi

if ./scripts/check-version-sync.sh >/dev/null 2>&1; then
  printf 'PASS all active VERSION consumers are synchronized\n'
else
  printf 'FAIL active VERSION consumers are not synchronized\n' >&2
  failures=$((failures + 1))
fi

if [[ "$failures" -gt 0 ]]; then
  exit 1
fi

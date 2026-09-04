#!/usr/bin/env bash
#
# check-version-sync.sh
# Verify that VERSION is synchronized across all Cowork documentation files
#
# Usage: ./scripts/check-version-sync.sh
# Exit codes: 0 = all synced, >0 = number of issues found

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
COWORK_ROOT="${COWORK_ROOT:-$(dirname "$SCRIPT_DIR")}" # repository root

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo "=== Cowork Version Sync Check ==="
echo

# Read VERSION file
if [[ ! -f "$COWORK_ROOT/VERSION" ]]; then
    echo -e "${RED}ERROR: VERSION file not found${NC}"
    exit 1
fi

VERSION=$(cat "$COWORK_ROOT/VERSION" | tr -d '[:space:]')
echo -e "Source VERSION file: ${GREEN}$VERSION${NC}"
echo

issues=0

check_consumer() {
    local label="$1"
    local path="$2"
    local pattern="$3"
    local actual

    if [[ ! -f "$path" ]]; then
        echo -e "   ${RED}✗${NC} $label: file not found ($path)"
        issues=$((issues + 1))
        return
    fi

    actual=$(grep -Eo "$pattern" "$path" | head -1 | grep -Eo '[0-9]+(\.[0-9]+)+' || true)
    if [[ "$actual" == "$VERSION" ]]; then
        echo -e "   ${GREEN}✓${NC} $label: $actual"
    else
        echo -e "   ${RED}✗${NC} $label: ${actual:-missing} (expected: $VERSION)"
        issues=$((issues + 1))
    fi
}

echo "Checking active VERSION consumers..."
check_consumer "README.md badge" "$COWORK_ROOT/README.md" 'Version-[0-9.]+-orange'
check_consumer "README.md footer" "$COWORK_ROOT/README.md" 'Version [0-9.]+'
check_consumer "README.fr.md badge" "$COWORK_ROOT/README.fr.md" 'Version-[0-9.]+-orange'
check_consumer "README.fr.md footer" "$COWORK_ROOT/README.fr.md" 'Version [0-9.]+'
check_consumer "MANIFEST.yaml" "$COWORK_ROOT/MANIFEST.yaml" '^version: *"?[0-9.]+'
check_consumer "CITATION.cff" "$COWORK_ROOT/CITATION.cff" '^version: *"?[0-9.]+'
check_consumer "llms.txt" "$COWORK_ROOT/llms.txt" '^- Version: [0-9.]+'
check_consumer "machine-readable/reference.yaml" "$COWORK_ROOT/machine-readable/reference.yaml" '^version: *"?[0-9.]+'
check_consumer "machine-readable/llms.txt" "$COWORK_ROOT/machine-readable/llms.txt" '^- Version: [0-9.]+'
check_consumer "machine-readable/claude-cowork-releases.yaml" "$COWORK_ROOT/machine-readable/claude-cowork-releases.yaml" '^latest: *"?[0-9.]+'
check_consumer "CLAUDE.md" "$COWORK_ROOT/CLAUDE.md" 'Source de vérité version \([0-9.]+\)'

# Historical entries in CHANGELOG.md and release histories are intentionally excluded.

echo
echo "=== Summary ==="
if [[ $issues -eq 0 ]]; then
    echo -e "${GREEN}All version references are synchronized!${NC}"
    exit 0
else
    echo -e "${RED}Found $issues version mismatch(es)${NC}"
    echo
    echo "To fix all at once, run:"
    echo "  cd $COWORK_ROOT && ./scripts/sync-version.sh"
    exit $issues
fi

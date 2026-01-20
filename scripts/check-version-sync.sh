#!/usr/bin/env bash
#
# check-version-sync.sh
# Verify that VERSION is synchronized across all Cowork documentation files
#
# Usage: ./scripts/check-version-sync.sh
# Exit codes: 0 = all synced, >0 = number of issues found

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
COWORK_ROOT="$(dirname "$SCRIPT_DIR")"

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

# Check 1: README.md version badge
echo "1. Checking README.md version badge..."
README="$COWORK_ROOT/README.md"
if [[ -f "$README" ]]; then
    readme_version=$(grep -o 'Version-[0-9.]*-orange' "$README" | head -1 | sed 's/Version-//' | sed 's/-orange//')
    if [[ "$readme_version" == "$VERSION" ]]; then
        echo -e "   ${GREEN}✓${NC} README.md badge: $readme_version"
    else
        echo -e "   ${RED}✗${NC} README.md badge: $readme_version (expected: $VERSION)"
        echo "      Fix: Line ~15, update badge to: Version-$VERSION-orange"
        ((issues++))
    fi
else
    echo -e "   ${YELLOW}⚠${NC}  README.md not found"
fi

# Check 2: README.md footer
echo "2. Checking README.md footer..."
if [[ -f "$README" ]]; then
    footer_version=$(grep -o 'Version [0-9.]*' "$README" | tail -1 | sed 's/Version //')
    if [[ "$footer_version" == "$VERSION" ]]; then
        echo -e "   ${GREEN}✓${NC} README.md footer: $footer_version"
    else
        echo -e "   ${RED}✗${NC} README.md footer: $footer_version (expected: $VERSION)"
        echo "      Fix: Last line, update to: Version $VERSION"
        ((issues++))
    fi
fi

# Check 3: CHANGELOG.md latest version
echo "3. Checking CHANGELOG.md..."
CHANGELOG="$COWORK_ROOT/CHANGELOG.md"
if [[ -f "$CHANGELOG" ]]; then
    changelog_version=$(grep -o '\[.*\]' "$CHANGELOG" | head -1 | tr -d '[]')
    if [[ "$changelog_version" == "$VERSION" ]]; then
        echo -e "   ${GREEN}✓${NC} CHANGELOG.md latest: $changelog_version"
    else
        echo -e "   ${RED}✗${NC} CHANGELOG.md latest: $changelog_version (expected: $VERSION)"
        echo "      Fix: Line ~9, ensure ## [$VERSION] exists as latest release"
        ((issues++))
    fi
else
    echo -e "   ${YELLOW}⚠${NC}  CHANGELOG.md not found"
fi

# Check 4: cowork-reference.yaml version
echo "4. Checking machine-readable/cowork-reference.yaml..."
REFERENCE="$COWORK_ROOT/../machine-readable/cowork-reference.yaml"
if [[ -f "$REFERENCE" ]]; then
    reference_version=$(grep '^version:' "$REFERENCE" | head -1 | sed 's/version: *//' | tr -d '"')
    if [[ "$reference_version" == "$VERSION" ]]; then
        echo -e "   ${GREEN}✓${NC} cowork-reference.yaml: $reference_version"
    else
        echo -e "   ${RED}✗${NC} cowork-reference.yaml: $reference_version (expected: $VERSION)"
        echo "      Fix: Line ~6, update to: version: \"$VERSION\""
        ((issues++))
    fi
else
    echo -e "   ${YELLOW}⚠${NC}  cowork-reference.yaml not found"
fi

# Check 5: Parent README.md (main repo)
echo "5. Checking parent README.md Cowork section..."
PARENT_README="$COWORK_ROOT/../README.md"
if [[ -f "$PARENT_README" ]]; then
    # Look for "New in vX.X.X" or similar version references in Cowork section
    if grep -A 20 "Claude Cowork" "$PARENT_README" | grep -q "New in v$VERSION"; then
        echo -e "   ${GREEN}✓${NC} Parent README mentions v$VERSION"
    else
        echo -e "   ${YELLOW}⚠${NC}  Parent README may need Cowork version update"
        echo "      Check: Line ~308, ensure 'New in v$VERSION' is mentioned"
    fi
else
    echo -e "   ${YELLOW}⚠${NC}  Parent README.md not found"
fi

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

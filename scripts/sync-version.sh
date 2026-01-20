#!/usr/bin/env bash
#
# sync-version.sh
# Synchronize VERSION across all Cowork documentation files
#
# Usage: ./scripts/sync-version.sh [--check]
#   --check: Only check, don't modify files (same as check-version-sync.sh)
#
# Example: echo "1.1.0" > VERSION && ./scripts/sync-version.sh

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
COWORK_ROOT="$(dirname "$SCRIPT_DIR")"

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

# Check-only mode
if [[ "${1:-}" == "--check" ]]; then
    exec "$SCRIPT_DIR/check-version-sync.sh"
fi

echo "=== Cowork Version Sync ==="
echo

# Read VERSION file
if [[ ! -f "$COWORK_ROOT/VERSION" ]]; then
    echo "ERROR: VERSION file not found"
    exit 1
fi

VERSION=$(cat "$COWORK_ROOT/VERSION" | tr -d '[:space:]')
echo -e "Syncing to version: ${GREEN}$VERSION${NC}"
echo

# Get current date for CHANGELOG
CURRENT_DATE=$(date +%Y-%m-%d)

# 1. Update README.md version badge
echo "1. Updating README.md version badge..."
README="$COWORK_ROOT/README.md"
if [[ -f "$README" ]]; then
    sed -i.bak "s/Version-[0-9.]*-orange/Version-$VERSION-orange/" "$README"
    rm "${README}.bak"
    echo -e "   ${GREEN}✓${NC} Badge updated"
else
    echo -e "   ${YELLOW}⚠${NC}  README.md not found"
fi

# 2. Update README.md footer
echo "2. Updating README.md footer..."
if [[ -f "$README" ]]; then
    # Update last line with version + date
    sed -i.bak "$ s/Version [0-9.]*.*$/Version $VERSION | $(date +"%B %Y") | Part of [Claude Code Ultimate Guide](..\/README.md) | Crafted with Claude*/" "$README"
    rm "${README}.bak"
    echo -e "   ${GREEN}✓${NC} Footer updated"
fi

# 3. Check CHANGELOG.md has entry
echo "3. Checking CHANGELOG.md..."
CHANGELOG="$COWORK_ROOT/CHANGELOG.md"
if [[ -f "$CHANGELOG" ]]; then
    if grep -q "## \[$VERSION\]" "$CHANGELOG"; then
        echo -e "   ${GREEN}✓${NC} CHANGELOG already has [$VERSION] entry"
    else
        echo -e "   ${YELLOW}⚠${NC}  CHANGELOG missing [$VERSION] - add manually"
        echo "      Add this after line 7:"
        echo "      ## [$VERSION] - $CURRENT_DATE"
    fi
else
    echo -e "   ${YELLOW}⚠${NC}  CHANGELOG.md not found"
fi

# 4. Update cowork-reference.yaml
echo "4. Updating cowork-reference.yaml..."
REFERENCE="$COWORK_ROOT/../machine-readable/cowork-reference.yaml"
if [[ -f "$REFERENCE" ]]; then
    sed -i.bak "s/^version: *\".*\"/version: \"$VERSION\"/" "$REFERENCE"
    sed -i.bak "s/^updated: *\".*\"/updated: \"$CURRENT_DATE\"/" "$REFERENCE"
    rm "${REFERENCE}.bak"
    echo -e "   ${GREEN}✓${NC} Reference YAML updated"
else
    echo -e "   ${YELLOW}⚠${NC}  cowork-reference.yaml not found"
fi

# 5. Reminder for parent README
echo "5. Parent README.md..."
echo -e "   ${YELLOW}ℹ${NC}  Manually update parent README.md if needed"
echo "      Check line ~308 for Cowork section version references"

echo
echo "=== Summary ==="
echo -e "${GREEN}Version synchronized to $VERSION${NC}"
echo
echo "Next steps:"
echo "  1. Review changes: git diff"
echo "  2. Run verification: ./scripts/check-version-sync.sh"
echo "  3. Update CHANGELOG.md if needed"
echo "  4. Commit: git add . && git commit -m \"docs(cowork): bump version to $VERSION\""

#!/usr/bin/env bash
#
# update-stats.sh
# Update statistics in Cowork README (prompts count, workflows count, files count)
#
# Usage: ./scripts/update-stats.sh [--check]
#   --check: Only show stats, don't modify files
#
# Run this after adding/removing prompts or workflows

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
COWORK_ROOT="$(dirname "$SCRIPT_DIR")"

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

CHECK_ONLY=false
if [[ "${1:-}" == "--check" ]]; then
    CHECK_ONLY=true
fi

echo "=== Cowork Statistics Update ==="
echo

# Count prompts per category
echo -e "${BLUE}Counting prompts...${NC}"
FILE_OPS_COUNT=$(grep -c '^###' "$COWORK_ROOT/prompts/file-ops.md" 2>/dev/null || echo "0")
DOC_CREATE_COUNT=$(grep -c '^###' "$COWORK_ROOT/prompts/document-creation.md" 2>/dev/null || echo "0")
DATA_EXTRACT_COUNT=$(grep -c '^###' "$COWORK_ROOT/prompts/data-extraction.md" 2>/dev/null || echo "0")
RESEARCH_COUNT=$(grep -c '^###' "$COWORK_ROOT/prompts/research.md" 2>/dev/null || echo "0")

TOTAL_PROMPTS=$((FILE_OPS_COUNT + DOC_CREATE_COUNT + DATA_EXTRACT_COUNT + RESEARCH_COUNT))

echo "  File Operations: $FILE_OPS_COUNT"
echo "  Document Creation: $DOC_CREATE_COUNT"
echo "  Data Extraction: $DATA_EXTRACT_COUNT"
echo "  Research: $RESEARCH_COUNT"
echo "  ${GREEN}Total Prompts: $TOTAL_PROMPTS${NC}"
echo

# Count workflows (excluding .en.md to avoid double-counting)
echo -e "${BLUE}Counting workflows...${NC}"
WORKFLOWS_COUNT=$(find "$COWORK_ROOT/workflows" -name "*.md" -not -name "README.md" -not -name "*.en.md" 2>/dev/null | wc -l | tr -d ' ')
echo "  ${GREEN}Total Workflows: $WORKFLOWS_COUNT${NC}"
echo

# Count guide files
echo -e "${BLUE}Counting guide files...${NC}"
GUIDES_COUNT=$(find "$COWORK_ROOT/guide" -name "*.md" 2>/dev/null | wc -l | tr -d ' ')
echo "  ${GREEN}Total Guides: $GUIDES_COUNT${NC}"
echo

# Count reference files
echo -e "${BLUE}Counting reference files...${NC}"
REFERENCE_COUNT=$(find "$COWORK_ROOT/reference" -name "*.md" 2>/dev/null | wc -l | tr -d ' ')
echo "  ${GREEN}Total Reference Files: $REFERENCE_COUNT${NC}"
echo

# Total documentation files
TOTAL_FILES=$((GUIDES_COUNT + WORKFLOWS_COUNT + REFERENCE_COUNT + 1))  # +1 for README
echo -e "${GREEN}Total Documentation Files: $TOTAL_FILES${NC}"
echo

if [[ "$CHECK_ONLY" == true ]]; then
    echo "=== Check Only Mode ==="
    echo "No files modified. Run without --check to update README.md"
    exit 0
fi

# Update README.md badges
echo "=== Updating README.md ==="

README="$COWORK_ROOT/README.md"
if [[ ! -f "$README" ]]; then
    echo "ERROR: README.md not found"
    exit 1
fi

# Create backup
cp "$README" "${README}.bak"

# Update prompts badge
sed -i.tmp "s/Prompts-[0-9]*+-green/Prompts-${TOTAL_PROMPTS}+-green/" "$README"

# Update workflows badge
sed -i.tmp "s/Workflows-[0-9]*-blue/Workflows-${WORKFLOWS_COUNT}-blue/" "$README"

# Update prompts table in "Ready-to-Use Prompts" collapsible
sed -i.tmp "s/| \[File Operations\](prompts\/file-ops.md) | [0-9]*/| [File Operations](prompts\/file-ops.md) | $FILE_OPS_COUNT/" "$README"
sed -i.tmp "s/| \[Document Creation\](prompts\/document-creation.md) | [0-9]*/| [Document Creation](prompts\/document-creation.md) | $DOC_CREATE_COUNT/" "$README"
sed -i.tmp "s/| \[Data Extraction\](prompts\/data-extraction.md) | [0-9]*/| [Data Extraction](prompts\/data-extraction.md) | $DATA_EXTRACT_COUNT/" "$README"
sed -i.tmp "s/| \[Research\](prompts\/research.md) | [0-9]*/| [Research](prompts\/research.md) | $RESEARCH_COUNT/" "$README"

# Update total prompts line
sed -i.tmp "s/\*\*Total\*\*: [0-9]* copy-paste prompts/**Total**: $TOTAL_PROMPTS copy-paste prompts/" "$README"

# Clean up temp files
rm "${README}.tmp" 2>/dev/null || true

# Show diff if changes were made
if ! diff -q "$README" "${README}.bak" > /dev/null 2>&1; then
    echo -e "${GREEN}✓ README.md updated${NC}"
    echo
    echo "Changes made:"
    diff -u "${README}.bak" "$README" | grep '^[+-]' | grep -v '^[+-][+-][+-]' | head -20
    rm "${README}.bak"
else
    echo -e "${YELLOW}No changes needed${NC}"
    rm "${README}.bak"
fi

echo
echo "=== Summary ==="
echo "Statistics:"
echo "  • Prompts: $TOTAL_PROMPTS ($FILE_OPS_COUNT + $DOC_CREATE_COUNT + $DATA_EXTRACT_COUNT + $RESEARCH_COUNT)"
echo "  • Workflows: $WORKFLOWS_COUNT"
echo "  • Guide Files: $GUIDES_COUNT"
echo "  • Total Documentation: $TOTAL_FILES files"
echo
echo "Next steps:"
echo "  1. Review changes: git diff cowork/README.md"
echo "  2. Commit: git add cowork/README.md && git commit -m \"docs(cowork): update stats\""

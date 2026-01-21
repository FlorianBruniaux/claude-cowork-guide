#!/bin/bash

# Translation Synchronization Checker
# Compares modification dates between source files and their translations
# Exit code 0: All translations are up-to-date
# Exit code 1: Outdated translations found

set -e

RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

OUTDATED_COUNT=0
MISSING_COUNT=0
UP_TO_DATE_COUNT=0

echo "🔍 Checking translation synchronization..."
echo ""

# Function to check if translation is outdated
check_translation() {
    local source="$1"
    local translation="$2"
    local type="$3"

    if [ ! -f "$translation" ]; then
        echo -e "${YELLOW}⏳ MISSING${NC}: $translation (source: $source)"
        ((MISSING_COUNT++))
        return 1
    fi

    # Get modification times
    if [[ "$OSTYPE" == "darwin"* ]]; then
        # macOS
        source_time=$(stat -f %m "$source")
        translation_time=$(stat -f %m "$translation")
    else
        # Linux
        source_time=$(stat -c %Y "$source")
        translation_time=$(stat -c %Y "$translation")
    fi

    if [ "$source_time" -gt "$translation_time" ]; then
        echo -e "${RED}⚠️  OUTDATED${NC}: $translation (source modified after translation)"
        ((OUTDATED_COUNT++))
        return 1
    else
        echo -e "${GREEN}✅ CURRENT${NC}: $translation"
        ((UP_TO_DATE_COUNT++))
        return 0
    fi
}

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📁 WORKFLOWS (FR → EN)"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# Check workflows (FR primary → EN translation)
for source in workflows/*.md; do
    # Skip .en.md and .fr.md files
    if [[ "$source" == *".en.md" ]] || [[ "$source" == *".fr.md" ]]; then
        continue
    fi

    # Get base name without extension
    base="${source%.md}"
    translation="${base}.en.md"

    check_translation "$source" "$translation" "workflow"
done

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📚 GUIDE (EN → FR)"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# Check guide (EN primary → FR translation)
for source in guide/*.md; do
    if [[ "$source" == *".fr.md" ]]; then
        continue
    fi

    base="${source%.md}"
    translation="${base}.fr.md"

    check_translation "$source" "$translation" "guide"
done

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "💬 PROMPTS (EN → FR)"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# Check prompts (EN primary → FR translation)
for source in prompts/*.md; do
    if [[ "$source" == *".fr.md" ]]; then
        continue
    fi

    base="${source%.md}"
    translation="${base}.fr.md"

    check_translation "$source" "$translation" "prompts"
done

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📖 REFERENCE (EN → FR)"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# Check reference (EN primary → FR translation)
for source in reference/*.md; do
    if [[ "$source" == *".fr.md" ]]; then
        continue
    fi

    base="${source%.md}"
    translation="${base}.fr.md"

    check_translation "$source" "$translation" "reference"
done

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📄 ROOT FILES"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# Check README
if [ -f "README.md" ]; then
    check_translation "README.md" "README.fr.md" "root"
fi

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📊 SUMMARY"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

TOTAL=$((UP_TO_DATE_COUNT + OUTDATED_COUNT + MISSING_COUNT))

echo -e "${GREEN}✅ Up-to-date:${NC} $UP_TO_DATE_COUNT"
echo -e "${RED}⚠️  Outdated:${NC} $OUTDATED_COUNT"
echo -e "${YELLOW}⏳ Missing:${NC} $MISSING_COUNT"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "Total checked: $TOTAL"
echo ""

if [ $OUTDATED_COUNT -gt 0 ] || [ $MISSING_COUNT -gt 0 ]; then
    echo -e "${RED}❌ Translation check FAILED${NC}"
    echo ""
    echo "Action required:"
    if [ $OUTDATED_COUNT -gt 0 ]; then
        echo "  • Update $OUTDATED_COUNT outdated translation(s)"
    fi
    if [ $MISSING_COUNT -gt 0 ]; then
        echo "  • Create $MISSING_COUNT missing translation(s)"
    fi
    echo "  • Update TRANSLATIONS.md with sync dates"
    echo ""
    exit 1
else
    echo -e "${GREEN}✅ All translations are synchronized!${NC}"
    echo ""
    exit 0
fi

#!/bin/bash

# ============================================
# 🔍 CHECK FOR UPDATES SCRIPT
# ============================================
# This script shows available updates WITHOUT installing them
# It's 100% safe - it only looks, doesn't touch!
# ============================================

# Colors for pretty output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Fun emoji indicators
CHECK="✅"
SEARCH="🔍"
PACKAGE="📦"
INFO="ℹ️"

echo ""
echo -e "${BLUE}============================================${NC}"
echo -e "${BLUE}   ${SEARCH} Check for Updates ${SEARCH}${NC}"
echo -e "${BLUE}============================================${NC}"
echo ""
echo -e "${INFO}  This script only LOOKS for updates."
echo -e "${INFO}  It won't change anything on your website."
echo ""

# Get the directory where this script lives, then go to project root
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
PROJECT_DIR="$( cd -- "$SCRIPT_DIR/.." &> /dev/null && pwd )"
cd "$PROJECT_DIR"

# Check if we're in the right folder
if [ ! -f "package.json" ]; then
    echo -e "${RED}❌ Oops! Can't find the website files.${NC}"
    echo ""
    echo "Make sure you're running this from the scripts folder."
    exit 1
fi

echo -e "${GREEN}✅ Found your website at: $PROJECT_DIR${NC}"
echo ""

echo -e "${YELLOW}Checking for available updates...${NC}"
echo ""

# Show outdated packages
echo -e "${PACKAGE} ${BLUE}Package Update Report:${NC}"
echo ""
echo "┌─────────────────────────────────────────────────────────┐"
echo "│  Package Name          Current    Latest    Status     │"
echo "├─────────────────────────────────────────────────────────┤"

# Get outdated packages
OUTDATED=$(npm outdated 2>/dev/null)

if [ -z "$OUTDATED" ]; then
    echo "│  ${CHECK} All packages are up to date!                       │"
else
    echo "$OUTDATED" | tail -n +2 | while read line; do
        echo "│  $line"
    done
fi

echo "└─────────────────────────────────────────────────────────┘"
echo ""

# Summary
echo -e "${GREEN}============================================${NC}"
echo -e "${GREEN}   ${CHECK} Check Complete!${NC}"
echo -e "${GREEN}============================================${NC}"
echo ""
echo "What the columns mean:"
echo "  • Current = What you have now"
echo "  • Latest  = Newest version available"
echo ""
echo "Want to install these updates?"
echo "  Run: ./scripts/update.sh"
echo ""

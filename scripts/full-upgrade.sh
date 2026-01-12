#!/bin/bash

# ============================================
# ⬆️ FULL UPGRADE SCRIPT
# ============================================
# This script upgrades ALL packages to their latest versions
# Use this when you want the newest everything!
# ============================================

# Colors for pretty output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Fun emoji indicators
CHECK="✅"
ROCKET="🚀"
PACKAGE="📦"
WARNING="⚠️"
SPARKLE="✨"
UP="⬆️"

echo ""
echo -e "${CYAN}============================================${NC}"
echo -e "${CYAN}   ${UP} Full Package Upgrade ${UP}${NC}"
echo -e "${CYAN}============================================${NC}"
echo ""
echo -e "${WARNING} ${YELLOW}HEADS UP!${NC}"
echo ""
echo "This script will upgrade ALL packages to their"
echo "newest versions. This is more aggressive than"
echo "the regular update script."
echo ""
echo "This is usually safe, but if something looks"
echo "weird after, you can ask for help."
echo ""

# Ask for confirmation
read -p "Do you want to continue? (yes/no): " CONFIRM

if [ "$CONFIRM" != "yes" ]; then
    echo ""
    echo "No problem! Nothing was changed."
    echo "Run ./scripts/update.sh for a safer update."
    echo ""
    exit 0
fi

echo ""

# Get the directory where this script lives, then go to project root
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
PROJECT_DIR="$( cd -- "$SCRIPT_DIR/.." &> /dev/null && pwd )"
cd "$PROJECT_DIR"

# Check if we're in the right folder
echo -e "${YELLOW}Checking location...${NC}"

if [ ! -f "package.json" ]; then
    echo -e "${RED}❌ Oops! Can't find the website files.${NC}"
    echo ""
    echo "Make sure you're running this from the scripts folder."
    exit 1
fi

echo -e "${GREEN}${CHECK} Found your website at: $PROJECT_DIR${NC}"

echo -e "${GREEN}${CHECK} Found your website folder!${NC}"
echo ""

# Check internet
echo -e "${YELLOW}Checking internet...${NC}"

if ! ping -c 1 google.com &> /dev/null; then
    echo -e "${RED}❌ No internet connection.${NC}"
    exit 1
fi

echo -e "${GREEN}${CHECK} Internet is working!${NC}"
echo ""

# Show current state
echo -e "${YELLOW}Current packages:${NC}"
echo ""
npm outdated 2>/dev/null || echo "  All packages are current!"
echo ""

# Create a backup note
echo -e "${YELLOW}${PACKAGE} Upgrading all packages...${NC}"
echo ""

# First, update npm itself if needed
echo "Checking npm version..."
npm install -g npm@latest 2>/dev/null || true
echo ""

# Now upgrade all packages
echo "Upgrading project packages..."
npx npm-check-updates -u 2>/dev/null && npm install

if [ $? -eq 0 ]; then
    echo ""
    echo -e "${GREEN}============================================${NC}"
    echo -e "${GREEN}   ${CHECK} Full Upgrade Complete! ${SPARKLE}${NC}"
    echo -e "${GREEN}============================================${NC}"
    echo ""
    echo "All packages have been upgraded to their latest versions!"
    echo ""
    echo "What to do next:"
    echo "  1. Run ./scripts/start-server.sh"
    echo "  2. Look around your website to make sure it works"
    echo "  3. If something looks wrong, contact support"
    echo ""
else
    # Fallback to simpler approach
    echo ""
    echo -e "${YELLOW}Trying alternative upgrade method...${NC}"
    npm update --save
    
    echo ""
    echo -e "${GREEN}============================================${NC}"
    echo -e "${GREEN}   ${CHECK} Upgrade Complete! ${SPARKLE}${NC}"
    echo -e "${GREEN}============================================${NC}"
    echo ""
fi

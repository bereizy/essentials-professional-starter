#!/bin/bash

# ============================================
# 🔄 WEBSITE UPDATE SCRIPT
# ============================================
# This script updates your website's code packages
# It's safe to run anytime!
# ============================================

# Colors for pretty output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Fun emoji indicators
CHECK="✅"
ROCKET="🚀"
PACKAGE="📦"
WARNING="⚠️"
ERROR="❌"
SPARKLE="✨"

echo ""
echo -e "${BLUE}============================================${NC}"
echo -e "${BLUE}   ${ROCKET} Website Update Script ${ROCKET}${NC}"
echo -e "${BLUE}============================================${NC}"
echo ""

# Get the directory where this script lives, then go to project root
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
PROJECT_DIR="$( cd -- "$SCRIPT_DIR/.." &> /dev/null && pwd )"

# Step 1: Go to project folder
echo -e "${YELLOW}Step 1/4: Going to website folder...${NC}"
cd "$PROJECT_DIR"

if [ ! -f "package.json" ]; then
    echo -e "${RED}${ERROR} Oops! Can't find the website files.${NC}"
    echo ""
    echo "Make sure you're running this from the scripts folder."
    exit 1
fi

echo -e "${GREEN}${CHECK} Found your website at: $PROJECT_DIR${NC}"

echo -e "${GREEN}${CHECK} Found your website folder!${NC}"
echo ""

# Step 2: Check internet connection
echo -e "${YELLOW}Step 2/4: Checking internet connection...${NC}"

if ! ping -c 1 google.com &> /dev/null; then
    echo -e "${RED}${ERROR} No internet connection detected.${NC}"
    echo ""
    echo "Please check your internet and try again."
    exit 1
fi

echo -e "${GREEN}${CHECK} Internet is working!${NC}"
echo ""

# Step 3: Show what's currently installed
echo -e "${YELLOW}Step 3/4: Checking for updates...${NC}"
echo ""

echo -e "${PACKAGE} Current packages that might have updates:"
echo ""

# Check for outdated packages and show them
npm outdated 2>/dev/null || echo "  All packages are up to date!"
echo ""

# Step 4: Install updates
echo -e "${YELLOW}Step 4/4: Installing updates...${NC}"
echo ""

# Run npm update
if npm update 2>&1; then
    echo ""
    echo -e "${GREEN}============================================${NC}"
    echo -e "${GREEN}   ${CHECK} Update Complete! ${SPARKLE}${NC}"
    echo -e "${GREEN}============================================${NC}"
    echo ""
    echo "Your website packages have been updated!"
    echo ""
    echo "What to do next:"
    echo "  1. Run ./scripts/start-server.sh to preview your site"
    echo "  2. Make sure everything looks good"
    echo "  3. You're all done!"
    echo ""
else
    echo ""
    echo -e "${RED}============================================${NC}"
    echo -e "${RED}   ${ERROR} Something went wrong${NC}"
    echo -e "${RED}============================================${NC}"
    echo ""
    echo "Don't worry! Your website is still working."
    echo "Please contact your support team for help."
    echo ""
    exit 1
fi

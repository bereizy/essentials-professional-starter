#!/bin/bash

# ============================================
# 🚀 START WEBSITE SERVER SCRIPT
# ============================================
# This script starts your website so you can preview it
# Press Ctrl+C to stop the server when you're done
# ============================================

# Colors for pretty output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Fun emoji indicators
ROCKET="🚀"
GLOBE="🌐"
CHECK="✅"
STOP="🛑"

echo ""
echo -e "${BLUE}============================================${NC}"
echo -e "${BLUE}   ${ROCKET} Starting Your Website ${ROCKET}${NC}"
echo -e "${BLUE}============================================${NC}"
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

# Check if node_modules exists
if [ ! -d "node_modules" ]; then
    echo -e "${YELLOW}📦 First time setup: Installing packages...${NC}"
    echo ""
    npm install
    echo ""
fi

echo -e "${GREEN}${CHECK} Everything looks good!${NC}"
echo ""
echo -e "${GLOBE} Starting your website..."
echo ""
echo "┌─────────────────────────────────────────────────────────┐"
echo "│                                                         │"
echo "│   Your website will open at:                            │"
echo "│                                                         │"
echo "│       http://localhost:4321                             │"
echo "│                                                         │"
echo "│   Copy that link and paste it in your browser!          │"
echo "│                                                         │"
echo "├─────────────────────────────────────────────────────────┤"
echo "│                                                         │"
echo "│   🛑 To STOP the server:                                │"
echo "│      Press Ctrl + C (hold Ctrl and press C)             │"
echo "│                                                         │"
echo "└─────────────────────────────────────────────────────────┘"
echo ""

# Start the development server
npm run dev

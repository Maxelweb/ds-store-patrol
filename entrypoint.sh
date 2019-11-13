#!/bin/bash

#  ============================
#  DS_Store Patrol - v1.0
#  Developed by Maxelweb
#  ============================

echo "DS_Store Patrol is checking..."

# Colors

RED='\033[91m'
GREEN='\033[92m'
YELLOW='\033[93m'
NC='\033[0m'

# Command

FOUND_COUNTER=$(find -name '*.DS_Store' | wc -l)

# Check if there's any .DS_Store file in the repo

if [ $FOUND_COUNTER -gt 0 ]; then
    figlet "Delete this!"
    echo "[${RED}ERROR${NC}] MacOS USER DETECTED!! \
          \n\tSomeone included ${RED}$FOUND_COUNTER .DS_Store file(s) ${NC} in the last push / pull request. \
          \n\tWe dont do that here!"
    echo "[${YELLOW}TIP${NC}] Add .DS_Store in your ${YELLOW}.gitignore ${NC}file"
    exit 1
fi

# If nothing has been found, everything ok

figlet "NICE"
echo "[${GREEN}SUCCESS${NC}] No .DS_Store has been found in the last push / pull request."
exit 0

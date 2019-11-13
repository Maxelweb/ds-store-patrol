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
    
    echo -e " \n\
 ____       _      _         _   _     _     _\n\
|  _ \  ___| | ___| |_ ___  | |_| |__ (_)___| |\n\
| | | |/ _ \ |/ _ \ __/ _ \ | __| '_ \| / __| |\n\
| |_| |  __/ |  __/ ||  __/ | |_| | | | \__ \_|\n\
|____/ \___|_|\___|\__\___|  \__|_| |_|_|___(_)\n"

    echo -e "[${RED}ERROR${NC}] .DS_Store DETECTION!! \
          \n\tSomeone included ${RED}$FOUND_COUNTER .DS_Store file(s) ${NC}in the last push / pull request. \
          \n\tWe dont do that here!"
    echo -e "[${YELLOW}TIP${NC}] Add .DS_Store in your ${YELLOW}.gitignore ${NC}file"
    exit 1
fi

# If nothing has been found, everything ok

echo -e " \n\
 _   _ ___ ____ _____\n\
| \ | |_ _/ ___| ____|\n\
|  \| || | |   |  _|\n\
| |\  || | |___| |___\n\
|_| \_|___\____|_____|\n"

echo -e "[${GREEN}SUCCESS${NC}] No .DS_Store has been found in the last push / pull request."
exit 0
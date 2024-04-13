#!/bin/bash

mark=''
GREEN='\033[0;32m' # ANSI GREEN
RED='\033[0;31m'   # ANSI RED 
NC='\033[0m' # 恢复默认颜色

for ((ratio=0;${ratio}<=100;ratio+=2))
do
        sleep 0.05
        printf "Process:${GREEN}[%-150s]${NC}%d%%\r" "${mark}" "${ratio}"
        mark="###${mark}"
done

printf "Process:${GREEN}[%-150s]${NC}100%%\n${RED}Login successfully!${NC}" "${mark}"


#!/bin/bash

SEARCH_DIR="/Users/farhadzada/nebula/"
START_DATE=${1:-"2024-01-01"} # Default to "2024-01-01" if no argument is provided

total_add=0

while IFS= read -r repo; do 
    echo "Repository: ${repo}"
    
    add=$(cd "${repo}/.." && git log --author="Farhad" --since="$START_DATE" --pretty=tformat: --numstat | gawk '{ add += $1 } END { print add }')

    total_add=$((total_add + add))
    
    echo "Added lines in this repo: $add"
    echo
done < <(find "$SEARCH_DIR" -type d -name .git) 

echo "Total added lines across all repositories since $START_DATE: $total_add"

#!/bin/bash

# Default values
SEARCH_DIR=$(pwd)
START_DATE="2024-01-01"
AUTHOR=""  # Replace with a default author name or leave empty

# Parse named parameters
while getopts d:s:a: flag
do
    case "${flag}" in
        d) SEARCH_DIR=${OPTARG};;
        s) START_DATE=${OPTARG};;
        a) AUTHOR=${OPTARG};;
    esac
done

total_add=0

while IFS= read -r repo; do 
    echo "Repository: ${repo}"
    
    add=$(cd "${repo}/.." && git log --author="$AUTHOR" --since="$START_DATE" --pretty=tformat: --numstat | gawk '{ add += $1 } END { print add }')

    total_add=$((total_add + add))
    
    echo "Added lines in this repo by $AUTHOR: $add"
    echo
done < <(find "$SEARCH_DIR" -type d -name .git) 

echo "Total added lines across all repositories by $AUTHOR since $START_DATE: $total_add"


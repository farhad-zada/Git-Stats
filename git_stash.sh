#!/bin/bash

# Default values
SEARCH_DIR=$(pwd)
START_DATE="2024-01-01"

# Parse named parameters
while getopts d:s: flag
do
    case "${flag}" in
        d) SEARCH_DIR=${OPTARG};;
        s) START_DATE=${OPTARG};;
    esac
done

total_add=0

while IFS= read -r repo; do 
    echo "Repository: ${repo}"
    
    add=$(cd "${repo}/.." && git log --author="Farhad" --since="$START_DATE" --pretty=tformat: --numstat | gawk '{ add += $1 } END { print add }')

    total_add=$((total_add + add))
    
    echo "Added lines in this repo: $add"
    echo
done < <(find "$SEARCH_DIR" -type d -name .git) 

echo "Total added lines across all repositories since $START_DATE: $total_add"

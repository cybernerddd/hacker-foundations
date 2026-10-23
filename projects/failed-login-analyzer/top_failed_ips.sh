#!/bin/bash

file=$1

if [[ -z "$file" ]]; then
    echo "Usage: $0 <log_file>" >&2
    exit 1
fi

# file doesnt exist or readable
if [[ ! -f "$file" || ! -r "$file" ]]; then
    echo "Error: file does not exist or is not readable."
    exit 1
fi

ranked_ips="ranked_ips.txt"

{
    echo 
    echo " FAILED IP ANALYSIS"
    echo " ==================="
    echo ""
    grep -i 'Failed' "$file" | 
        awk '{print $11}' | 
        sort | 
        uniq -c |
        sort -nr

} | tee "$ranked_ips"

if [[ ${PIPESTATUS[0]} -eq 0 ]]; then
    echo ""
    echo "Report successfully saved to '$ranked_ips'."
else
    echo "Warning: check whether the report was generated correctly." >&2
    exit 1
fi

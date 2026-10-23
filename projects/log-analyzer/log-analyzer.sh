#!/bin/bash

set -o pipefail

# $1 holds the first argument passed to the script
file=$1

#check if a file was provided as an argument
if [[ -z "$file" ]]; then
    echo "Usage: $0 <logfile>" >&2
    exit 1
fi

if [[ ! -f "$file" || ! -r "$file" ]]; then
    echo "File does not exist or is not readable." >&2
    exit 1
fi


report="report.txt"

if {
    echo "Security Log Analysis"
    echo "====================="

    awk 'END {print "Total lines: ", NR}' "$file" 
    grep -ic 'Failed' "$file" | 
        awk '{print "Failed login attempts: ", $1}' 
    
    echo
    echo "Failed Login counts by IP"
    grep -i 'Failed' "$file" | 
        awk '{print $11}' | 
        sort | 
        uniq  -c | 
        sort -nr
} > "$report"; then
    echo "Report saved to $report"

else 
    echo "Error: report generation failed" >&2
    exit 2
fi

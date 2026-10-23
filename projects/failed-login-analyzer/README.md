# Failed Login IP Analyzer

A Bash-based security log analysis tool that extracts source IP addresses from failed login attempts, counts occurrences, and ranks the IPs by frequency.

## Features

- Validates the supplied log file.
- Filters failed login entries.
- Extracts IP address fields from the practice log format.
- Counts occurrences per IP address.
- Ranks IPs from highest to lowest failure count.
- Displays and saves the results using `tee`.

## Requirements

- Linux or another Bash-compatible environment
- `grep`, `awk`, `sort`, `uniq`, and `tee`

## Usage

```bash
chmod +x top_failed_ips.sh
./top_failed_ips.sh auth.log
```

The script saves the ranked results to `ranked_ips.txt` in the current working directory.

## Example

```text
FAILED IP ANALYSIS
==================
      3 192.168.1.10
      3 192.168.1.15
      1 203.0.113.50
```

## Current Limitations

- Assumes source IP addresses are in field 11 of the log entries.
- Designed for a specific practice-log format, not arbitrary authentication logs.
- Counts failed-login records; it does not establish whether activity is malicious.

## What I Learned

- Bash arguments and input validation
- Standard output and standard error
- Pipelines and text-processing tools
- Sorting and counting repeated values
- Saving terminal output to a file

**Environment:** Kali Linux  
**Project type:** Linux command-line and security-log analysis practice

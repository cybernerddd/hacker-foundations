# Security Log Analyzer

A Bash-based command-line tool built on Kali Linux to analyze authentication logs, summarize failed login attempts, and identify source IP addresses with repeated failures.

This project is part of my Linux and cybersecurity learning journey, focusing on Bash scripting, text processing, pipelines, and security log analysis.

## Features

- **Input validation:** Checks that a log file is provided and readable.
- **Total line count:** Reports the number of lines in the log file.
- **Failed login count:** Counts log entries containing failed-login indicators.
- **IP address analysis:** Extracts source IP addresses from failed-login entries.
- **Frequency ranking:** Counts and ranks IP addresses by the number of failed attempts.
- **Report generation:** Saves the analysis results to `report.txt`.

## Requirements

- Linux or a Bash-compatible environment
- Bash
- `awk`
- `grep`
- `sort`
- `uniq`

These utilities are commonly available on Kali Linux.

## Installation

Clone the repository and navigate to the project directory:

```bash
git clone https://github.com/cybernerddd/hacker-foundation.git
cd hacker-foundation/projects/log-analyzer
```

Make the script executable:

```bash
chmod +x log_analyzer.sh
```

## Usage

Run the script with a log file as the argument:

```bash
./log_analyzer.sh auth.log
```

The analysis report is saved to `report.txt` in the current working directory.

If no filename is provided, the script displays usage instructions. It also checks whether the specified file exists and is readable.

## Example Output

Given a sample authentication log, the report may look like this:

```text
Security Log Analysis
=====================
Total lines: 9
Failed login attempts: 7

Failed Login Counts by IP
      3 192.168.1.10
      3 192.168.1.15
      1 203.0.113.50
```

*The example uses synthetic practice data.*

## Tools and Concepts Practiced

- Bash scripting and positional arguments (`$1`)
- Conditional statements and input validation
- Standard output and standard error
- Exit codes and error handling
- Pipelines and output redirection
- Text processing with `grep` and `awk`
- Sorting and frequency counting with `sort` and `uniq`
- Basic authentication log analysis

## Limitations

- The script assumes source IP addresses appear in field 11 of the log entries.
- It is designed for the practice log format used during development, not every authentication log format.
- It identifies failed-login patterns but does not prove that an IP address is malicious.
- It is a learning project, not a production-ready security monitoring system.

## Future Improvements

- Support different authentication log formats.
- Extract IP addresses without relying on a fixed field position.
- Handle empty logs and logs without failed-login entries more explicitly.
- Add command-line options for custom report paths.
- Add automated tests using synthetic log data.
- Improve pipeline error handling.

## Author

**Cybernerddd**

Cybersecurity learner focused on Linux, web application penetration testing, and security tooling.

GitHub: [@cybernerddd](https://github.com/cybernerddd)

> Hack to learn, learn to secure.

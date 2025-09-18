# Day 3 — Bash Conditionals (if / else / elif)

This repo contains small scripts to practice `if`, `else`, and `elif` in Bash.

## Files
- `01_basic_if.sh` : basic numeric & string comparisons and examples.
- `02_file_checks.sh`: file/directory checks using test operators (-f, -d, -r, -w).
- `03_service_disk_check.sh`: small real-world script — check a service status & disk usage threshold, uses if/elif/else.
- `exercises.md`: extra challenges.

## How to run
Make scripts executable and run:
```
chmod +x *.sh
./01_basic_if.sh
./02_file_checks.sh /path/to/check
./03_service_disk_check.sh nginx 80 /var
```

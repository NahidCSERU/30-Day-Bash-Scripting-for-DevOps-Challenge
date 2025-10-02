# Linux Day 13: Error Handling (Exit Codes, set -e, trap)

This repo demonstrates how to handle errors in Bash scripts.

## Topics Covered
1. **Exit Codes**
   - `$?` → captures the exit status of the last command.
   - `0` = success, non-zero = error.

2. **set -e**
   - Stops the script immediately if any command fails.

3. **trap**
   - Catches errors or signals and executes a custom handler.

---

##  How to Run
```
chmod +x scripts/*.sh

# Run exit code example
./scripts/01_exit_codes.sh

# Run set -e example
./scripts/02_set_e.sh

# Run trap example
./scripts/03_trap.sh
```
Perfect for practicing **robust bash scripting** and **error handling** as a DevOps engineer.
# Day 6: Bash Special Variables

This repo demonstrates the use of Bash special variables:

- `$0` → The name of the script
- `$1, $2, ...` → Positional parameters (arguments)
- `$@` → All arguments as separate words
- `$#` → Number of arguments
- `$?` → Exit status of last command

## Usage

1. Clone the repo:
   ```
   git clone https://github.com/NahidCSERU/30-Day-Bash-Scripting-for-DevOps-Challenge.git
   cd day6-special-variables/scripts
   ```
2. Make the script executable:
   ```
   chmod +x scripts/special_variables.sh
   ```
3. Run with some arguments:
   ```
   ./scripts/special_variables.sh hello world 123
   ```
   


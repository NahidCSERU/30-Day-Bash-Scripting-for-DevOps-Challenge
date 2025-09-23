# Day 8: Functions in Bash (local vs global variables)

This project demonstrates the difference between **local** and **global** variables inside Bash functions.

##  Run the script

1. Clone the repo:
   ```
   git clone https://github.com/NahidCSERU/30-Day-Bash-Scripting-for-DevOps-Challenge.git
   cd day8-bash-functions
   ```
2. Make the script executable:
```
 chmod +x script.sh
./script.sh
```
## Expected Output
```
Before function call: Global Nahid
Inside function: Local Nahid
After say_hello: Global Nahid
Inside change_global: Changed Global
After change_global: Changed Global
```
## Key Notes

- `local` keyword keeps a variable's scope **inside the function only.**

- Without `local`, the variable will **modify the global variable.**
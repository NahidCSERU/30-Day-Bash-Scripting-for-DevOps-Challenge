# Day 5: Bash Scripting Project 
**Topic:** Command Substitution & Arithmetic Operations  

This project demonstrates how to use **command substitution** (`$(...)`) and **arithmetic operations** (`$((...))`) in Bash scripting through a simple **System Report & Calculator** script.  


## Project Structure
```
Day5_Project/
├── system_calc.sh # Main Bash script
└── logs.txt # Auto-generated log file
```

## Features
1. **System Report Section**  
   - Shows current **user**, **uptime**, and **date & time** using command substitution.  
2. **Calculator Section**  
   - Takes two numbers from the user.  
   - Performs arithmetic operations: **Addition, Subtraction, Multiplication, Division**.  
3. **Logging**  
   - All outputs are displayed in the terminal **and** saved to `logs.txt`.  

##  Usage
1. Clone or copy the script:
   ```
   git clone https://github.com/NahidCSERU/30-Day-Bash-Scripting-for-DevOps-Challenge.git
   cd Day5_Project
   ```
2. Make the script executable:
    ```
    chmod +x system_calc.sh
    ```
3. Run the script:
   ```
    ./system_calc.sh
   ```
## Example Output
```
=== System Report ===
User        : ubuntu
Uptime      : up 1 hour, 12 minutes
Date & Time : Sat Sep 20 07:30:10 UTC 2025
=====================
Enter first number: 10
Enter second number: 5
=== Calculator Results ===
10 + 5 = 15
10 - 5 = 5
10 * 5 = 50
10 / 5 = 2
==========================
```
## Learning Goals

- Practice **command substitution** in Bash ($`(date)`, $`(whoami)`, $(`uptime -p)`).

- Understand **arithmetic expansion** in Bash ($((...))).

- Learn how to **log script output** into a file for future reference.

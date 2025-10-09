# Simple Linux Logger

A beginner-friendly Linux logging demo (Day 15 project).  
This script logs user input to both a file and syslog.

##  Usage
1. Clone the repo:
```
   git clone https://github.com/NahidCSERU/30-Day-Bash-Scripting-for-DevOps-Challenge.git
   cd day15-simple-linux-logger
```
2. Make the script executable:
```
chmod +x log.sh
```
3. Run Project:
```
./log.sh
```
## Example:
```
Enter a message to log: Server started
✅ Message logged successfully!
📄 Check logs/app.log or run: journalctl -t simple-linux-logger
```
## What You Learn

- `echo` logging with timestamps

- `logger` command to write to system log

- `date` command usage

- File redirection in bash
## Output Example
```
2025-10-09 15:20:10 [INFO] Server started
2025-10-09 15:21:45 [INFO] User logged in
```

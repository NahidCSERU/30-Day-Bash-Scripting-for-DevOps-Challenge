# Day 16: Cron Jobs — Scheduling Scripts 

This project demonstrates how to automate Python scripts using **Cron Jobs** in Linux/Mac (or Task Scheduler in Windows).

---

## Setup

```
git https://github.com/NahidCSERU/30-Day-Bash-Scripting-for-DevOps-Challenge.git
cd day16-cron-jobs-scheduling
```
**No dependencies are required, but make sure Python 3 is installed.**

## Run manually
```
python3 app/main.py
```
## Set up the Cron Job
Edit the cron table:
```
crontab -e
```
Add this line (update the path):
```
* * * * * /usr/bin/python3 /absolute/path/to/app/main.py >> /absolute/path/to/logs/cron_output.log 2>&1
```
This will run the script every minute.
## Log Output

Logs are saved in:
```
logs/task.log
```

Example:
```
[2025-10-19 10:00:00] Cron job executed successfully.
```
## Tip

To list your current cron jobs:
```
crontab -l
```

To remove all cron jobs:
```
crontab -r
```
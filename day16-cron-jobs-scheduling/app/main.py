import datetime
from utils import write_log

def run_task():
    """A demo task that writes current time to log file"""
    now = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    message = f"[{now}] Cron job executed successfully."
    write_log(message)
    print(message)

if __name__ == "__main__":
    run_task()

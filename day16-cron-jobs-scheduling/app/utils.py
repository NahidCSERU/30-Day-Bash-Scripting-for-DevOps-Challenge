import os

LOG_PATH = os.path.join(os.path.dirname(__file__), "../logs/task.log")

def write_log(message):
    os.makedirs(os.path.dirname(LOG_PATH), exist_ok=True)
    with open(LOG_PATH, "a") as log_file:
        log_file.write(message + "\n")

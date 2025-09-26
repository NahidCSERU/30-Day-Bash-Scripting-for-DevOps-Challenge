# Linux Day 11: File Handling (Reading, Writing, Appending Files)

This project demonstrates **basic file handling in Linux** using Bash scripts.  
You will learn how to **read, write, and append files** — which are essential skills for any DevOps engineer.


## Project Structure
```
linux-day-11-file-handling/
├── README.md
├── scripts/
│ ├── read_file.sh # Read and display file content
│ ├── write_file.sh # Write (overwrite) new content into a file
│ ├── append_file.sh # Append content to the end of a file
│ └── file_utils.sh # Utility functions (file exists check, etc.)
└── examples/
├── notes.txt # Example notes file
├── log.txt # Example log file
└── data.txt # Example data file
```
## Scripts Overview
### 1️⃣ Read File
```
cd scripts/
./read_file.sh ../examples/notes.txt
```
**Output:**  
   ```
   📖 Reading file: ../examples/notes.txt
   Linux Day 11 Notes
   - File handling basics
   - cat, echo, >, >>
   ```
### 2️⃣ Write to File (Overwrite)
```
./write_file.sh ../examples/data.txt "This is new data"
```
**Output:**
```
✅ Written to ../examples/data.txt
```
### 3️⃣ Append to File
```
./append_file.sh ../examples/log.txt "New log entry"
```
**Output:**
```
➕ Appended to ../examples/log.txt
```

4️⃣ Check if File Exists (Utility)
```
source ./file_utils.sh
check_file_exists ../examples/notes.txt
```
**Output:**
```
✔ File exists: ../examples/notes.txt
```
## Key Concepts Learned

- Using `cat` to read files

- Using echo with `>` (overwrite) and `>>` (append)

- File existence checks with conditional statements (if [`[ -f ... ]]`)

- Re-usable utility functions for DevOps scripts

## Why DevOps Engineers Need This?

In real DevOps tasks you often:
   - Read logs and configuration files

   - Write automation outputs into files

   - Append monitoring data into log files

   - Verify file availability before deployment

These skills build the foundation for scripting automation in Linux.
# Day 9: Bash Arrays & Loops

This repo contains a simple bash script to demonstrate:

- Declaring arrays in bash
- Looping over arrays (for-each style)
- Index-based looping
- Adding elements to array
- Removing elements (unset)

## How to run

1. Clone the repo:
   ```
   git clone https://github.com/NahidCSERU/30-Day-Bash-Scripting-for-DevOps-Challenge.git
   cd day9-bash-arrays-loops
   ```
2. Make the script executable:
```
chmod +x arrays_loops.sh
./arrays_loops.sh
```
## Expected Output
```
All fruits: apple banana cherry date
Number of fruits: 4
Looping through fruits:
Fruit: apple
Fruit: banana
Fruit: cherry
Fruit: date
Index-based loop:
Index 0 → apple
Index 1 → banana
Index 2 → cherry
Index 3 → date
After adding: apple banana cherry date elderberry
After removing index 1: apple cherry date elderberry
Final fruits list:
apple
cherry
date
elderberry
```

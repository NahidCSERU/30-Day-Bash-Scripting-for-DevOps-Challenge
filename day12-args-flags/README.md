# Linux Day 12: Command-line Arguments & Flags Parsing

This repository demonstrates how to handle command-line arguments and flags in Linux shell scripts. It's useful for DevOps engineers, sysadmins, and anyone working with Bash scripting.

## Topics Covered

- Accessing command-line arguments using `$1`, `$2`, etc.
- Using `$@` and `$*` for all arguments
- Parsing flags with `getopts`
- Handling optional and required arguments
- Combining flags and arguments

## Examples

### 1. Simple Argument Example
```
bash examples/arg_example.sh hello world
```
### 2. Flag Example

```
bash examples/flag_example.sh -a -b
```
### 3. Combined Example

```
bash examples/combined_example.sh -u nahid -v 1
```
## Usage Notes:

- You can easily parse flags using `getopts`.

- Use `$@` or `$*` to handle all arguments.

- Condition checks are used for handling optional and required arguments.
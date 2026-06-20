# Bash Scripting Project - DevTools HW1

## Team Members
| GitHub Username | Full Name |
|---|---|
| kerenv | Keren [Last Name] |
| shirat | Shira [Last Name] |
| ofeko  | Ofek [Last Name] |

## Scripts Overview

Each team member selected and implemented 5 Bash scripts, located in the `/scripts` directory.

### Keren
| Script | Description |
|---|---|
| `add_prefix.sh` | Adds a given prefix to the filenames of all `.txt` files in a specified directory |
| `git_status_subdirs.sh` | Displays the Git status of every subdirectory inside a given directory |
| `clean_temp_files.sh` | Removes temporary project files (e.g. `.class`, `node_modules`, `.pyc`) |
| `disk_usage.sh` | Displays disk usage for each subdirectory in a given path |
| `files_above_size.sh` | Lists files whose size exceeds a specified threshold |

### Shira
| Script | Description |
|---|---|
| `weather.sh` | Fetches and displays the current weather for a specified city |
| `reminder.sh` | Displays an on-screen reminder after a specified amount of time |
| `backup.sh` | Backs up the contents of a directory into a `.tar.gz` archive |
| `recent_modified.sh` | Finds all files modified within the last N days |
| `kill_by_name.sh` | Kills all running processes matching a given name |

### Ofek
| Script | Description |
|---|---|
| `ascii_clock.sh` | Displays a real-time clock using ASCII characters |
| `gen_password.sh` | Generates a random 10-character password (at least 1 uppercase, 1 lowercase, 1 digit, 1 symbol) |
| `sort_lines.sh` | Sorts the lines of a given file alphabetically |
| `count_stats.sh` | Counts and prints the number of lines, words, and characters in every file in a directory |
| `check_urls.sh` | Checks the accessibility of a list of URLs |

## Setup Instructions

1. Clone the repository:
```bash
   git clone https://github.com/Afeka-DevTools/26b-10142-bash-kerenv_shirat_ofeko.git
   cd 26b-10142-bash-kerenv_shirat_ofeko
```

2. Make all scripts executable:
```bash
   chmod +x scripts/*.sh
```

## How to Run Each Script

| Script | Usage | Notes |
|---|---|---|
| `add_prefix.sh` | `./scripts/add_prefix.sh <directory> <prefix>` | Renames all `.txt` files in `<directory>` |
| `git_status_subdirs.sh` | `./scripts/git_status_subdirs.sh <parent_directory>` | Requires Git installed |
| `clean_temp_files.sh` | `./scripts/clean_temp_files.sh <project_directory>` | Deletes build/cache artifacts |
| `disk_usage.sh` | `./scripts/disk_usage.sh <directory>` | |
| `files_above_size.sh` | `./scripts/files_above_size.sh <directory> <size_in_MB>` | |
| `weather.sh` | `./scripts/weather.sh <city_name>` | Requires internet connection |
| `reminder.sh` | `./scripts/reminder.sh <seconds> <message>` | |
| `backup.sh` | `./scripts/backup.sh <source_directory> <output.tar.gz>` | |
| `recent_modified.sh` | `./scripts/recent_modified.sh <directory> <N_days>` | |
| `kill_by_name.sh` | `./scripts/kill_by_name.sh <process_name>` | Use with caution |
| `ascii_clock.sh` | `./scripts/ascii_clock.sh` | Press Ctrl+C to exit |
| `gen_password.sh` | `./scripts/gen_password.sh` | |
| `sort_lines.sh` | `./scripts/sort_lines.sh <input_file> [output_file]` | |
| `count_stats.sh` | `./scripts/count_stats.sh <directory>` | |
| `check_urls.sh` | `./scripts/check_urls.sh <urls_list_file>` | One URL per line in the input file |

## Requirements
- Bash shell
- Internet connection (for `weather.sh`, `check_urls.sh`)
- `curl` (auto-installed by scripts if missing)

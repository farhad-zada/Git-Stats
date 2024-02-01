# Git Contribution Tracker

## Overview
`git_stats` is a command-line tool for calculating the total number of lines added by a specified author across all Git repositories within a specified directory and time range. It's ideal for developers looking to track their contributions or team leads monitoring team member progress.

## Prerequisites
- Bash shell
- Git
- `awk` (GNU awk)

## Installation
1. Clone or download the `git_stats.sh` script.
2. Move the script to a directory in your PATH, for example, `~/bin`:
   ```bash
   mkdir -p ~/bin
   mv /path/to/git_stats.sh ~/bin/git_stats
   chmod +x ~/bin/git_stats
   ```
3. Ensure `~/bin` is in your PATH. Add this line to your `~/.bashrc`, `~/.bash_profile`, or `~/.zshrc`:
   ```bash
   export PATH="$HOME/bin:$PATH"
   ```
4. Reload your profile (or restart your terminal):
   ```bash
   source ~/.bashrc  # Or the appropriate file you edited
   ```

## Usage
Run the command with the following syntax, specifying the search directory, start date, end date, and author's name using flags:

```bash
git_stats -d [search-directory] -s [start-date] -e [end-date] -a [author-name]
```

- `-d [search-directory]`: (Optional) Directory to search for Git repositories. Defaults to the current directory.
- `-s [start-date]`: (Optional) Start date for tracking contributions in `YYYY-MM-DD` format. Defaults to "2024-01-01".
- `-e [end-date]`: (Optional) End date for tracking contributions in `YYYY-MM-DD` format. If not provided, tracks until the current date.
- `-a [author-name]`: (Optional) Author name to track contributions. Tracks all authors if not provided.

### Example
To track contributions by 'JaneDoe' in `/path/to/directory` from January 1, 2022, to December 31, 2022:

```bash
git_stats -d "/path/to/directory" -s "2022-01-01" -e "2022-12-31" -a "JaneDoe"
```

## Output
The command outputs the number of lines added in each found repository and the total lines added across all repositories by the specified author within the given time range.

## Customization
You can change the default values for search directory, start date, end date, and author name directly in the script.

## License
Use it however you want

## Contributing
For contributions please contact farhad.szd@gmail.com

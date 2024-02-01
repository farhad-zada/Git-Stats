# Git Contribution Tracker

## Overview
`git_stats.sh` is a Bash script designed to calculate the total number of lines added by a specified author across all Git repositories in a given directory, starting from a specified date. It's an excellent tool for developers to track their contributions or for team leads to monitor the progress of specific team members.

## Prerequisites
- Bash shell (typically available on Linux and macOS)
- Git
- `gawk` (GNU awk)

## Installation
1. Clone this repository or download `git_stats.sh` directly.
2. Make the script executable:
   ```bash
   chmod +x git_stats.sh
   ```

## Usage
Run the script with the following command, specifying the search directory, the start date for tracking contributions, and the author's name using flags:

```bash
./git_stats.sh -d [search-directory] -s [start-date] -a [author-name]
```

- `-d [search-directory]`: (Optional) The directory where the script will search for Git repositories. Defaults to the current directory if not provided.
- `-s [start-date]`: (Optional) The start date for tracking contributions in `YYYY-MM-DD` format. Defaults to "2024-01-01" if not provided.
- `-a [author-name]`: (Optional) The author name to track contributions. If not provided, the script will track contributions for all authors.

### Example
To track contributions by 'JohnDoe' in the `/path/to/directory` directory since January 1, 2022:

```bash
./git_stats.sh -d "/path/to/directory" -s "2022-01-01" -a "JohnDoe"
```

If you run the script without specifying any options, it will use the default values and track contributions for all authors in the current directory starting from January 1, 2024.

## Output
The script outputs the number of lines added in each found Git repository and the total lines added across all repositories by the specified author since the specified start date.

## Customization
The script is easily customizable. You can change the default search directory, start date, and author name directly in the script.

## License
Use it however you want

## Contributing
For contributions contact farhad.szd@gmail.com



# Git Contribution Tracker

## Overview
This script (`git_stats.sh`) calculates the total number of lines added by a specific author across all Git repositories in a specified directory, starting from a given date. It's ideal for tracking contributions over a certain period.

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
Run the script with the following command, specifying the search directory and the start date for tracking contributions:

```bash
./git_stats.sh [search-directory] [start-date]
```

- `[search-directory]`: (Optional) The directory where the script will search for Git repositories. Defaults to the current directory if not provided.
- `[start-date]`: (Optional) The start date for tracking contributions in `YYYY-MM-DD` format. Defaults to "2024-01-01" if not provided.

### Example
To track contributions in the `/path/to/directory` since January 1, 2022:

```bash
./git_stats.sh "/path/to/directory" "2022-01-01"
```

If you run the script without specifying arguments, it will search in the current directory and use the default start date.

## Output
The script outputs the number of lines added in each found Git repository and the total lines added across all repositories since the specified start date.

## Customization
- The script automatically tracks contributions from an author named "Farhad." Modify the `--author` flag value in the script to track a different author.

## License
Use it however you want

## Contributing
For contributions contact farhad.szd@gmail.com

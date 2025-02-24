#!/bin/bash

log_dir="/var/log"  # Set the directory where logs are stored
archived_dir="/home/user/logs_archive"  # Set where you want to archive cleaned logs

mkdir -p "$archived_dir"

# Process logs (e.g., remove error messages)
grep -v "ERROR" "$log_dir/syslog" > "$archived_dir/syslog_cleaned_$(date +%Y%m%d).log"

echo "Logs have been cleaned and archived."

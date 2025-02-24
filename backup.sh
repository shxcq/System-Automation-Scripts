#!/bin/bash

# Directories to backup
source_dir="/home/user/data"
backup_dir="/home/user/backups"

# Create backup
backup_file="$backup_dir/data_backup_$(date +%Y%m%d).tar.gz"
tar -czf "$backup_file" "$source_dir"

echo "Backup completed: $backup_file"

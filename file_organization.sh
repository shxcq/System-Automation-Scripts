#!/bin/bash

# Directories to organize
organize_dir="/path/to/organize"  # Set the directory to organize
desktop_dir="/home/user/Desktop"  # You can change it to another directory

# Create folders for different file types
mkdir -p "$desktop_dir/Documents" "$desktop_dir/Images" "$desktop_dir/Music" "$desktop_dir/Videos"

# Move files into respective folders
find "$organize_dir" -type f -iname "*.pdf" -exec mv {} "$desktop_dir/Documents/" \;
find "$organize_dir" -type f -iname "*.jpg" -exec mv {} "$desktop_dir/Images/" \;
find "$organize_dir" -type f -iname "*.mp3" -exec mv {} "$desktop_dir/Music/" \;
find "$organize_dir" -type f -iname "*.mp4" -exec mv {} "$desktop_dir/Videos/" \;

echo "Files have been organized."

#!/bin/bash

# Backup directory name
BACKUP_DIR="backup_files"

# Create backup directory if not exists
if [ ! -d "$BACKUP_DIR" ]; then
    mkdir "$BACKUP_DIR"
fi

# Ask user for file name
echo "Enter file name to backup:"
read filename

# Check if file exists
if [ ! -f "$filename" ]; then
    echo "File does not exist!"
    exit 1
fi

# Create backup file name with date & time
backup_file="${BACKUP_DIR}/${filename}_$(date +%Y%m%d_%H%M%S)"

# Copy file to backup directory
cp "$filename" "$backup_file"

echo "Backup created successfully in $BACKUP_DIR/"




#!/bin/bash

echo "script is working"

# BACKUP SCRIPT FOR HOME DIRECTORY

TIMESTAMP=$(date '+%Y-%m-%d_%H:%M')
DEST_DIR="$HOME/backup"
SOURCE_DIR="$HOME"

# create a backup folder/dir

mkdir -p "$DEST_DIR"

tar -czvf "$DEST_DIR/home_bakcup_$TIMESTAMP.tar.gz" -C "$SOURCE_DIR" .

echo -e "\n backup of file $SOURCE_DIR/home_backup_$TIMESTAMP.tar.gz"

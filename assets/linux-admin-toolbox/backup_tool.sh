#!/bin/bash
# Backup specified directory using tar

BACKUP_SRC="/home/$USER"         # Change this to the directory you want to back up
BACKUP_DEST="$HOME/backups"
DATE=$(date +%Y-%m-%d)
FILENAME="backup-$DATE.tar.gz"

mkdir -p $BACKUP_DEST
tar -czvf $BACKUP_DEST/$FILENAME $BACKUP_SRC

echo "Backup saved to $BACKUP_DEST/$FILENAME"

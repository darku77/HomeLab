#!/bin/bash
LOG_FILE="/appdata_backup/backup.log"
> $LOG_FILE

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="/appdata_backup/appdata_backup_$TIMESTAMP.zip"

echo "Starting backup at $(date)" > $LOG_FILE

# backup
zip -r "$BACKUP_FILE" /appdata >> $LOG_FILE 2>&1

# Keep only the last 5 backups (delete older ones)
ls -tp /appdata_backup/appdata_backup_*.zip | grep -v '/$' | tail -n +6 | xargs -I {} rm -- {}

echo "Backup completed: $BACKUP_FILE"

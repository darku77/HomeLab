#!/bin/bash
#### WILL CHANGE PERMISSIONS PERIODICALLY TO 777 OVER SOME FOLDERS
# -----------------------------
# Put your script in OMV’s GUI scheduled tasks
#
# Go to OMV Web UI → System → Scheduled Tasks.
#
# Add a new job, point it to /appdata/_scripts/fix_media_permissions.sh, set schedule (e.g. every 5 min).
#
# -----------------------------
TARGET="/srv/dev-disk-by-uuid-927de304-fe4e-430d-8c9d-97e019fe287f/movies"

#!/bin/bash
exec >> /appdata/_scripts/fix_media_permissions.log 2>&1
echo "Running at $(date)"
# Change ownership and permissions recursively
sudo chmod -R 777 "$TARGET"
echo "Done at $(date)"

echo "Setup complete!"
echo "Permissions script: $SCRIPT"
echo "Cron job added to run every 5 minutes."

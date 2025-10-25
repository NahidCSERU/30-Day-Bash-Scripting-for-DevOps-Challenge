#!/bin/bash
# Author: <Nahid Hasan>
# Date: 25.10..2025
set -e

source config.env
DATE=$(date +%Y%m%d-%H%M%S)
DEST="$BACKUP_DIR/mysql"
mkdir -p "$DEST"

echo "[INFO] Backing up MySQL database: $MYSQL_DATABASE"
mysqldump -u$MYSQL_USER -p$MYSQL_PASSWORD $MYSQL_DATABASE > "$DEST/${MYSQL_DATABASE}_${DATE}.sql"
gzip "$DEST/${MYSQL_DATABASE}_${DATE}.sql"

# Cleanup old backups
find "$DEST" -type f -mtime +$RETENTION_DAYS -delete

echo "[OK] MySQL backup completed: $DEST/${MYSQL_DATABASE}_${DATE}.sql.gz"

#!/bin/bash
set -euo pipefail

SOURCE="/srv/research"
DEST="/var/backups/research"
STAMP="$(date +%Y-%m-%d_%H-%M-%S)"
BACKUP="$DEST/research-$STAMP.tar.gz"

mkdir -p "$DEST"

tar -czf "$BACKUP" -C /srv research

find "$DEST" -type f -name 'research-*.tar.gz' -mtime +7 -delete

echo "Backup successful: $BACKUP"

#!/bin/bash
BACKUP_DIR="C:\Users\ipaky\Home_work"
SOURCE_DIRS=("C:\Users\ipaky\OneDrive\Documents" "C:\Users\ipaky\Videos")

DATE=$(date +"%Y-%m-%d")

for DIR in "${SOURCE_DIRS[@]}"; do
    BASENAME=$(basename "$DIR")
    BACKUP_FILE="${BACKUP_DIR}/${BASENAME}_${DATE}.tar.gz"

    tar -czf "$BACKUP_FILE" -C "$(dirname "$DIR")" "$BASENAME"
done

#!/bin/bash

# Skript pro pushovani na GitHub pres SSH
# Vygeneruje commit message podle systemoveho casu

REPO_DIR="$(dirname "$0")"

while true; do
    cd "$REPO_DIR" || exit 1

    # Pridani vsech zmen
    git add .

    # Vygenerovani commit message
    COMMIT_MSG="Push: $(date '+%Y-%m-%d %H:%M:%S')"

    # Commit
    git commit -m "$COMMIT_MSG"

    # Push na GitHub pres SSH
    git push origin main

    sleep 300 # 5 minut
done
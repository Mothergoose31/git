#!/usr/bin/env sh

set -e  # Exit immediately if a command exits with a non-zero status.

TEMPLATES_DIR="$PWD/.git-templates"
TARGET_DIR="$HOME/.git-templates"

if [ ! -d "$TEMPLATES_DIR" ]; then
    echo "Error: $TEMPLATES_DIR does not exist." >&2
    exit 1
fi

echo "Removing old Git templates directory..."
rm -rf "$TARGET_DIR"

echo "Creating symbolic link to new Git templates..."
ln -sf "$TEMPLATES_DIR" "$TARGET_DIR"

echo "Git templates setup complete. New templates are in $TARGET_DIR"
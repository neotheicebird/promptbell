#!/usr/bin/env sh
set -eu

REPO_RAW_URL="https://raw.githubusercontent.com/neotheicebird/promptbell/main/promptbell"
BIN_DIR="/usr/local/bin"

echo "Installing promptbell to $BIN_DIR..."

curl -fsSL "$REPO_RAW_URL" -o "$BIN_DIR/promptbell"
chmod +x "$BIN_DIR/promptbell"

echo "✅ promptbell installed"
echo "Run: promptbell --install"

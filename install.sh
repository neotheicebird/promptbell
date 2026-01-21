#!/usr/bin/env sh
set -eu

REPO_RAW_URL="https://raw.githubusercontent.com/neotheicebird/promptbell/main/promptbell"

# Prefer user-local bin
BIN_DIR="$HOME/.local/bin"

if [ ! -d "$BIN_DIR" ]; then
  mkdir -p "$BIN_DIR"
fi

echo "Installing promptbell to $BIN_DIR..."

curl -fsSL "$REPO_RAW_URL" -o "$BIN_DIR/promptbell"
chmod +x "$BIN_DIR/promptbell"

echo "✅ promptbell installed at $BIN_DIR/promptbell"

# Help user if not on PATH
if ! echo "$PATH" | grep -q "$BIN_DIR"; then
  echo ""
  echo "⚠️  $BIN_DIR is not on your PATH"
  echo "Add this to your shell config:"
  echo "  export PATH=\"\$HOME/.local/bin:\$PATH\""
fi

echo ""
echo "Next:"
echo "  promptbell --install"

#!/usr/bin/env sh
set -eu

REPO_RAW_URL="https://raw.githubusercontent.com/neotheicebird/promptbell/main/promptbell"

# Install to user-local bin (no sudo required)
BIN_DIR="$HOME/.local/bin"

mkdir -p "$BIN_DIR"

echo "Installing promptbell to $BIN_DIR..."

curl -fsSL "$REPO_RAW_URL" -o "$BIN_DIR/promptbell"
chmod +x "$BIN_DIR/promptbell"

echo "✅ promptbell installed at $BIN_DIR/promptbell"
echo ""

# Help user if bin dir is not on PATH
if ! echo "$PATH" | grep -q "$BIN_DIR"; then
  echo "⚠️  $BIN_DIR is not on your PATH"
  echo "Add this line to your shell config:"
  echo "  export PATH=\"\$HOME/.local/bin:\$PATH\""
  echo ""
fi

echo "Next step:"
echo "  promptbell --add"
echo ""
echo "This adds promptbell to your shell so notification sounds"
echo "play automatically for supported CLI tools (like gemini, codex)."

#!/bin/bash

echo "Step 8: Setting up Stow for bin scripts..."

BIN_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../bin" && pwd)"

cd "$BIN_DIR"
stow --target ~/ .

echo "✓ bin scripts stowed successfully"
echo "Files will be managed in:"
echo "  - ~/bin/"

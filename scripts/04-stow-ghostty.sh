#!/bin/bash

echo "Step 4: Setting up Stow for ghostty configuration..."

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../dotfiles" && pwd)"

cd "$DOTFILES_DIR"
stow --target ~/ ghostty

echo "✓ ghostty configuration stowed successfully"
echo "Files managed:"
echo "  - ~/.config/ghostty/config"


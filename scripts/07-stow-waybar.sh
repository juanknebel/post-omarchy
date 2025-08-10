#!/bin/bash

echo "Step 7: Setting up Stow for waybar configuration..."

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../dotfiles" && pwd)"

cd "$DOTFILES_DIR"
stow --target ~/ waybar

echo "✓ waybar configuration stowed successfully"
echo "Files managed:"
echo "  - ~/.config/waybar/config.jsonc"

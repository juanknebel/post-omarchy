#!/bin/bash

echo "Step 5: Setting up Stow for alacritty configuration..."

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../dotfiles" && pwd)"

cd "$DOTFILES_DIR"
stow --target ~/ alacritty

echo "✓ alacritty configuration stowed successfully"
echo "Files managed:"
echo "  - ~/.config/alacritty/alacritty.toml"


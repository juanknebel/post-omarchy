#!/bin/bash

echo "Step 6: Setting up Stow for CustomHypr configuration..."

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../dotfiles" && pwd)"

cd "$DOTFILES_DIR"
stow --target ~/ hypr

echo "✓ CustomHypr configuration stowed successfully"
echo "Files managed:"
echo "  - ~/.config/hypr/hyprland.conf"
echo "  - ~/.config/hypr/monitors.conf"
echo "  - ~/.config/hypr/input.conf"
echo "  - ~/.config/hypr/bindings.conf"
echo "  - ~/.config/hypr/custom/customrules.conf"


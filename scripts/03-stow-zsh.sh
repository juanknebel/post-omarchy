#!/bin/bash

echo "Step 3: Setting up Stow for zsh configuration..."

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../dotfiles" && pwd)"

cd "$DOTFILES_DIR"
stow --target ~/ zsh

echo "✓ zsh configuration stowed successfully"
echo "Files managed:"
echo "  - ~/.zshrc"


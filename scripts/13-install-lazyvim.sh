#!/bin/bash

echo "Reinstalling LazyVim..."

echo "Creating backups of existing configurations..."
mv ~/.config/nvim ~/.config/nvim.bak 2>/dev/null
mv ~/.local/share/nvim ~/.local/share/nvim.bak 2>/dev/null
mv ~/.local/state/nvim ~/.local/state/nvim.bak 2>/dev/null
mv ~/.cache/nvim ~/.cache/nvim.bak 2>/dev/null

echo "Cloning LazyVim starter..."
git clone https://github.com/LazyVim/starter ~/.config/nvim

echo "Cleaning .git directory..."
rm -rf ~/.config/nvim/.git

echo "LazyVim installed successfully"


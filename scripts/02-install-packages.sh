#!/bin/bash

echo "Step 2: Installing required packages..."
sudo pacman -S --noconfirm ghostty firefox keepassxc zed zsh zsh-autocomplete zsh-autosuggestions zsh-completions zsh-theme-powerlevel10k-git atuin npm qt5-wayland zoxide stow gvfs-smb caligula git-delta pacman-contrib uv
echo "✓ Packages installed successfully"

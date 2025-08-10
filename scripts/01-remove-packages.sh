#!/bin/bash

echo "Step 1: Removing unwanted packages..."
sudo pacman -Rsc typora zoom obs-studio kdenlive signal-desktop 1password-beta password-cli
echo "✓ Packages removed successfully"


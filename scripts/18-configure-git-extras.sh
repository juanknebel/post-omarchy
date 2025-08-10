#!/bin/bash

echo "Configuring Git extras..."

# Configure delta as the default pager
git config --global core.pager delta
git config --global interactive.diffFilter "delta --color-only"

# Delta-specific settings
git config --global delta.navigate true
git config --global delta.side-by-side true
git config --global delta.line-numbers true

# Merge and diff settings
git config --global merge.conflictstyle diff3
git config --global diff.colorMoved default

echo "Git extras configuration added successfully."

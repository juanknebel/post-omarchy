#!/bin/bash

echo "Configuring Neovim shell setting..."

mkdir -p ~/.config/nvim/lua/config

echo 'vim.o.shell = "/bin/zsh"' >>~/.config/nvim/lua/config/options.lua

echo "Neovim shell configuration added successfully."


#!/bin/bash

echo "Configuring Neovim shell setting..."

mkdir -p ~/.config/nvim/lua/config

echo 'vim.o.shell = "/bin/zsh"' >>~/.config/nvim/lua/config/options.lua
echo 'vim.env.PATH = vim.env.HOME .. "/.local/share/mise/shims:" .. vim.env.PATH' >>~/.config/nvim/lua/config/options.lua

echo "Neovim shell configuration added successfully."

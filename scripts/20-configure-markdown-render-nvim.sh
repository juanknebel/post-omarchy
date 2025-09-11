#!/bin/bash

echo "Configuring Render Markdown plugin for Neovim..."

sudo pacman -S python-pylatexenc

mkdir -p ~/.config/nvim/lua/plugins

cat >~/.config/nvim/lua/plugins/render-markdown.lua <<'EOF'
return {
  "MeanderingProgrammer/render-markdown.nvim",
  dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-mini/mini.nvim" }, -- if you use the m
ini.nvim suite
  ---@module 'render-markdown'
  ---@type render.md.UserConfig
  opts = {},
}
EOF

echo "Render Markdown plugin configured successfully at ~/.config/nvim/lua/plugins/render-markdown.lua"
echo "Remember to install treesitter parsers: markdown, markdown_inline, html, latex,yaml using :TSInstall <parser>"


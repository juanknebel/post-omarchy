#!/bin/bash

echo "Configuring Snacks plugin for Neovim..."

mkdir -p ~/.config/nvim/lua/plugins

cat >~/.config/nvim/lua/plugins/snacks.lua <<'EOF'
return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        hidden = true, -- for hidden files
        ignored = true, -- for .gitignore files
      },
    },
  },
}
EOF

echo "Snacks plugin configured successfully at ~/.config/nvim/lua/plugins/snacks.lua"


#!/bin/bash

echo "Configuring fzf-lua plugin for Neovim..."

mkdir -p ~/.config/nvim/lua/plugins

cat >~/.config/nvim/lua/plugins/fzf-lua.lua <<'EOF'
return {
  {
    "ibhagwan/fzf-lua",
    opts = {
      files = {
        fd_opts = "--type f --hidden --no-ignore --no-ignore --exclude .git --exclude node_modules",
      },
      grep = {
        rg_opts = "--hidden --no-ignore --column --line-number --no-heading --color=always --smart-case",
      },
    },
  },
}
EOF

echo "fzf-lua plugin configured successfully at ~/.config/nvim/lua/plugins/fzf-lua.lua"
echo ""
echo "IMPORTANT: Remember to enable fzf-lua from LazyVim extras:"
echo "  1. Open Neovim"
echo "  2. Run :LazyExtras"
echo "  3. Search and enable 'editor.fzf'"

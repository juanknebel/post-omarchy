#!/bin/bash

echo "Configuring Claude Code plugin for Neovim..."

mkdir -p ~/.config/nvim/lua/plugins

cat >~/.config/nvim/lua/plugins/claude-code.lua <<'EOF'
return {
  "nandoolle/claude-code.nvim",
  cmd = "ClaudeCode", -- Load when :ClaudeCode is executed
  keys = {
    { "<leader>ai", "<cmd>ClaudeCode<cr>", desc = "Toggle Claude Code" },
  },
  config = function()
    require("claude-code").setup({
      keybinding = "<leader>ai", -- Custom keybinding
    })
  end,
}
EOF

echo "Claude Code plugin configured successfully at ~/.config/nvim/lua/plugins/claude-code.lua"
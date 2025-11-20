#!/bin/bash

REPO_DIR="$HOME/.config/nvim/pack/nvim/start"

mkdir -p "$REPO_DIR"

cd "$REPO_DIR" || exit

repos=(
  "williamboman/mason.nvim"
  "williamboman/mason-lspconfig.nvim"
  "neovim/nvim-lspconfig"
  "hrsh7th/nvim-cmp"
  "hrsh7th/cmp-nvim-lsp"
  "L3MON4D3/LuaSnip"
  "saadparwaiz1/cmp_luasnip"
  "rafamadriz/friendly-snippets"
  "hrsh7th/cmp-path"
  "stevearc/dressing.nvim"
  "folke/tokyonight.nvim"
  "nvim-tree/nvim-tree.lua"
  "catppuccin/nvim"
  "nvim-tree/nvim-web-devicons"
  "nvim-telescope/telescope.nvim"
  "nvim-lua/plenary.nvim"
  "nvim-telescope/telescope-file-browser.nvim"
  "nvim-telescope/telescope-fzf-native.nvim"
  "nvim-treesitter/nvim-treesitter"
  "nyoom-engineering/oxocarbon.nvim"
)

for repo in "${repos[@]}"; do
  git clone "https://github.com/$repo.git"
done


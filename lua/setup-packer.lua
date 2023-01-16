-- This file can be loaded by calling `lua require('setup-packer')` from your init.lua

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd [[packadd packer.nvim]]
    return true
  end

  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  --------- Utils ---------
  -- Packer can manage itself
  -- https://github.com/wbthomason/packer.nvim#the-startup-function
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/plenary.nvim'
  use { 'nvim-telescope/telescope.nvim', tag = '0.1.0' }

  --------- UI ---------
  -- https://github.com/nvim-tree/nvim-web-devicons
  use 'nvim-tree/nvim-web-devicons'

  -- https://github.com/nvim-treesitter/nvim-treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- https://github.com/navarasu/onedark.nvim
  use 'navarasu/onedark.nvim'

  -- https://github.com/MunifTanjim/nui.nvim
  use 'MunifTanjim/nui.nvim'

  -- https://github.com/nvim-neo-tree/neo-tree.nvim
  use { 'nvim-neo-tree/neo-tree.nvim', branch = "v2.x" }

  -- https://github.com/akinsho/toggleterm.nvim
  use 'akinsho/toggleterm.nvim'

  -- https://github.com/nvim-lualine/lualine.nvim
  use 'nvim-lualine/lualine.nvim'

  --------- AutoCompletion and LSP ---------
  -- https://github.com/neovim/nvim-lspconfig
  use 'neovim/nvim-lspconfig'

  -- https://github.com/williamboman/mason.nvim
  use 'williamboman/mason.nvim'

  -- https://github.com/williamboman/mason-lspconfig.nvim
  use 'williamboman/mason-lspconfig.nvim'

  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'

  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'

  -- https://github.com/jose-elias-alvarez/typescript.nvim
  use 'jose-elias-alvarez/typescript.nvim'

  -- https://github.com/onsails/lspkind.nvim
  use 'onsails/lspkind-nvim'

  -- https://github.com/rafamadriz/friendly-snippets
  use 'rafamadriz/friendly-snippets'

  -- https://github.com/L3MON4D3/LuaSnip
  use 'L3MON4D3/LuaSnip'

  --------- Code Editing ---------
  -- https://github.com/kylechui/nvim-surround
  use { 'kylechui/nvim-surround', tag = '*' }

  -- GIT
  -- https://github.com/kdheepak/lazygit.nvim
  use 'kdheepak/lazygit.nvim'

  -- https://github.com/lewis6991/gitsigns.nvim
  use 'lewis6991/gitsigns.nvim'

  -- https://github.com/ruifm/gitlinker.nvim
  use 'ruifm/gitlinker.nvim'

  -- https://github.com/jose-elias-alvarez/null-ls.nvim
  use 'jose-elias-alvarez/null-ls.nvim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

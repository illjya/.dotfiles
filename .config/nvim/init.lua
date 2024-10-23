vim.cmd([[
  set runtimepath^=~/.vim runtimepath+=~/.vim/after
  let &packpath = &runtimepath
  source ~/.vimrc
]])

vim.opt.clipboard:append { 'unnamedplus' }

-- vim.opt.termguicolors = false

local Plug = vim.fn['plug#']

vim.call('plug#begin')

  -- Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }

  Plug 'neovim/nvim-lspconfig'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-cmdline'
  Plug 'hrsh7th/nvim-cmp'

  -- For vsnip users.
  -- Plug 'hrsh7th/cmp-vsnip'
  -- Plug 'hrsh7th/vim-vsnip'

  -- For luasnip users.
  Plug 'L3MON4D3/LuaSnip'
  Plug 'saadparwaiz1/cmp_luasnip'

  Plug "rafamadriz/friendly-snippets"
vim.call('plug#end')

require('config/lsp');

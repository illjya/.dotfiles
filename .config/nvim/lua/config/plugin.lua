local Plug = vim.fn['plug#']

vim.call('plug#begin')
  Plug('neovim/nvim-lspconfig')
  Plug('hrsh7th/cmp-nvim-lsp')
  Plug('hrsh7th/cmp-buffer')
  Plug('hrsh7th/cmp-path')
  Plug('hrsh7th/cmp-cmdline')
  Plug('hrsh7th/nvim-cmp')
  -- For vsnip users.
  -- -- Plug('hrsh7th/cmp-vsnip')
  -- -- Plug('hrsh7th/vim-vsnip')
  -- For luasnip users.
  Plug('L3MON4D3/LuaSnip')
  Plug('saadparwaiz1/cmp_luasnip')
  Plug("rafamadriz/friendly-snippets")

  Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' })

  Plug('windwp/nvim-autopairs')
  Plug('windwp/nvim-ts-autotag')

  Plug('junegunn/fzf', { ['do'] = 'fzf#install()' })
  Plug('junegunn/fzf.vim')

  Plug('vim-airline/vim-airline')
  Plug('vim-airline/vim-airline-themes')

  Plug('ellisonleao/gruvbox.nvim')
  Plug('EdenEast/nightfox.nvim')

  -- Plug('glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } })
vim.call('plug#end')

require('config/plugin/lsp')
require('config/plugin/tree-sitter')
require('config/plugin/fzf')
require('config/plugin/airline')
require('config/plugin/colorscheme')

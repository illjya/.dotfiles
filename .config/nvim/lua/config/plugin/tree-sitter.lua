-- At the bottom of your init.vim, keep all configs on one line
--
require'nvim-treesitter.configs'.setup{
  auto_install = false,

  ensure_installed = {
    "c",
    "lua",
    "rust",
    "python",
    "javascript",
    "typescript",
    "html",
    "css",
    "scss",
    "json"
  },

  highlight = {
    enable = true,
  },

  incremental_selection = {
    enable = true
  },

  -- indent = {
  --   enable = true
  -- },
}


vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'

require("nvim-autopairs").setup {}

require('nvim-ts-autotag').setup({
  opts = {
    -- Defaults
    enable_close = true, -- Auto close tags
    enable_rename = true, -- Auto rename pairs of tags
    enable_close_on_slash = false -- Auto close on trailing </
  },
  -- Also override individual filetype configs, these take priority.
  -- Empty by default, useful if one of the "opts" global settings
  -- doesn't work well in a specific filetype
  -- per_filetype = {
  --   ["html"] = {
  --     enable_close = false
  --   }
  -- }
})

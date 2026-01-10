vim.cmd([[
  set runtimepath^=~/.vim runtimepath+=~/.vim/after
  let &packpath = &runtimepath
  source ~/.vim/config/setting.vim
  source ~/.vim/config/map.vim
]])

require('config/setting')
require('config/plugin')

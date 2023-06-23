set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

set clipboard+=unnamedplus

" call plug#begin()
" 
" Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
" 
" call plug#end()

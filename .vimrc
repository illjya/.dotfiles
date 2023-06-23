syntax on
set number
set relativenumber
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set hlsearch
set incsearch
set smartcase
set splitright
set hidden
set nocompatible
set path+=**
set wildmenu
set wildignore+=**/node_modules/**

autocmd Filetype javascript,typescript,javascriptreact,typescriptreact,json,html,css setlocal tabstop=2 shiftwidth=2 softtabstop=2

" https://stackoverflow.com/questions/18321538/vim-error-e474-invalid-argument-listchars-tab-trail
scriptencoding utf-8
set encoding=utf-8

set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <A-1> 1gt
nnoremap <A-2> 2gt
nnoremap <A-3> 3gt
nnoremap <A-4> 4gt
nnoremap <A-5> 5gt
nnoremap <A-6> 6gt
nnoremap <A-7> 7gt
nnoremap <A-8> 8gt
nnoremap <A-9> 9gt
nnoremap <A-0> :tablast<CR>
nnoremap <A-h> :tabprevious<CR>
nnoremap <A-l> :tabnext<CR>
nnoremap <F5> :set list!<CR>
nnoremap <ESC> :nohlsearch<CR>

call plug#begin()

Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf.vim'
" Plug 'preservim/nerdtree'
" Plug 'jistr/vim-nerdtree-tabs', { 'on':  'NERDTreeTabsToggle' }
" Plug 'scrooloose/nerdtree', { 'on':  ['NERDTreeToggle', 'NERDTreeTabsToggle'] }
" Plug 'valloric/youcompleteme'
Plug 'morhetz/gruvbox'

call plug#end()

" fzf
nmap <C-n> :FZF<CR>
nmap <C-A> :Windows<CR>

let g:fzf_action = {
      \ 'ctrl-t': 'tab split',
      \ 'ctrl-s': 'split',
      \ 'ctrl-v': 'vsplit' }

" " NERDTree
" map <C-n> :NERDTreeTabsToggle<CR>
" " map <C-n> :NERDTreeToggle<CR>
" 
" " Mirror the NERDTree before showing it. This makes it the same on all tabs.
" " nnoremap <C-n> :NERDTreeMirror<CR>:NERDTreeFocus<CR>
" 
" let NERDTreeStatusline="%{matchstr(getline('.'), '\\w\\(.*\\)')}"
" let NERDTreeMinimalUI = 1
" let NERDTreeShowHidden = 1
" let NERDTreeShowLineNumbers = 1
" 
" " If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
" " autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
" "   \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
" 
" " Open the existing NERDTree on each new tab.
" " autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
" 
" " Make NerdTree update root to the current directory when directory changes with :cd
" " https://vi.stackexchange.com/questions/31050/how-can-i-make-nerdtree-update-root-to-the-current-directory-when-i-change-direc
" augroup DIRCHANGE
"     au!
"     autocmd DirChanged global :NERDTreeCWD
" augroup END

" youcompleteme
" let g:ycm_add_preview_to_completeopt = 0
" set completeopt-=preview

" Conquer of Complition coc.nvim
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" " Use tab for trigger completion with characters ahead and navigate.
" " NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" " other plugin before putting this into your config.
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
" 
" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction

" airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#show_buffers = 0
" let g:airline#extensions#tabline#buffer_nr_show = 1

" gruvbox
let g:gruvbox_contrast_dark = 'hard'

colorscheme gruvbox
set background=dark

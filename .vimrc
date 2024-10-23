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

" https://neovim.io/doc/user/options.html#'wildmenu'
cnoremap <Left> <Space><BS><Left>
cnoremap <Right> <Space><BS><Right>


call plug#begin()

Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'

call plug#end()

" fzf
nmap <C-n> :FZF<CR>
" nmap <C-A> :Windows<CR>

let g:fzf_action = {
      \ 'ctrl-t': 'tab split',
      \ 'ctrl-s': 'split',
      \ 'ctrl-v': 'vsplit' }

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

hi Search ctermfg=LightYellow
" hi CurSearch ctermbg=Yellow
hi link CurSearch IncSearch

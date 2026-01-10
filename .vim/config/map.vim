let mapleader = ' '

map <Space> <Nop>

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

nnoremap zO zR
nnoremap zC zM

" https://neovim.io/doc/user/options.html#'wildmenu'
cnoremap <Left> <Space><BS><Left>
cnoremap <Right> <Space><BS><Right>

nnoremap <expr> ' "'" . nr2char(getchar()) . 'zz'
nnoremap <expr> ` "`" . nr2char(getchar()) . 'zz'

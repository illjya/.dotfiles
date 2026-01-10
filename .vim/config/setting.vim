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
set splitbelow
set hidden
set nocompatible
set list
set nofoldenable
set path+=**
set wildmenu
set wildignore+=**/node_modules/**

autocmd Filetype lua,javascript,typescript,javascriptreact,typescriptreact,json,html,css setlocal tabstop=2 shiftwidth=2 softtabstop=2

" https://stackoverflow.com/questions/18321538/vim-error-e474-invalid-argument-listchars-tab-trail
scriptencoding utf-8
set encoding=utf-8

" https://www.reddit.com/r/neovim/comments/18szujr/using_neovim_with_different_keyboard_layouts/
" set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯБЮЖЭХЪ;ABCDEFGHIJKLMNOPQRSTUVWXYZ<>:\"{},фисвуапршолдьтщзйкыегмцчнябюж.эхъ;abcdefghijklmnopqrstuvwxyz\\,.\;/\'[]
" Й  Ц  У  К  Е  Н  Г  Ш  Щ  З  Х  Ъ  Ф  Ы  В  А  П  Р  О  Л  Д  Ж  Э  Я  Ч  С  М  И  Т  Ь  Б  Ю
" Q  W  E  R  T  Y  U  I  O  P  {  }  A  S  D  F  G  H  J  K  L  :  "  Z  X  C  V  B  N  M  <  >
"
" й  ц  у  к  е  н  г  ш  щ  з  х  ъ  ф  ы  в  а  п  р  о  л  д  ж  э  я  ч  с  м  и  т  ь  б  ю  .
" q  w  e  r  t  y  u  i  o  p  [  ]  a  s  d  f  g  h  j  k  l  ;  '  z  x  c  v  b  n  m  \, ./
" set langmap=ЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;QWERTYUIOP{}ASDFGHJKL:\"ZXCVBNM<>,йцукенгшщзхъфывапролджэячсмитьбю.;qwertyuiop[]asdfghjkl;'zxcvbnm\\,./
set langmap=ЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;QWERTYUIOP{}ASDFGHJKL:\"ZXCVBNM<>,йцукенгшщзхъфывапролджэячсмитьбю;qwertyuiop[]asdfghjkl;'zxcvbnm\\,.

" set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
set listchars=tab:>␣,trail:~,extends:>,precedes:<,space:·

" https://neovim.io/doc/user/options.html#'incsearch'
" augroup vimrc-incsearch-highlight
"   autocmd!
"   autocmd CmdlineEnter /,\? :set hlsearch
"   autocmd CmdlineLeave /,\? :set nohlsearch
" augroup END
"
augroup help-buffer-options
  autocmd!
  autocmd FileType help setlocal number relativenumber
  autocmd FileType tab help setlocal number relativenumber
augroup END

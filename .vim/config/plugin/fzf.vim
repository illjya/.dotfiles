" fzf
" nmap <C-n> :FZF<CR>
" nmap <C-A> :Windows<CR>

nmap <Leader>e :FZF<CR>
nmap <Leader>t :call fzf#run({'sink': 'tabe', 'window': { 'width': 0.9, 'height': 0.6 } })<CR>
nmap <Leader>s :call fzf#run({'sink': 'split', 'window': { 'width': 0.9, 'height': 0.6 } })<CR>
nmap <Leader>v :call fzf#run({'sink': 'vsplit', 'window': { 'width': 0.9, 'height': 0.6 } })<CR>
nmap <Leader>r :Rg<CR>
nmap <Leader>w :Windows<CR>
nmap <Leader>h :History<CR>
nmap <Leader>/ :History/<CR>
nmap <Leader>? :Helptags<CR>

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }

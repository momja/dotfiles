set number
set relativenumber

" Enable syntax highlighting
syntax on

" Highlight cursor line horizontally
set cursorline

" Tabs -> Spaces "
set shiftwidth=4 tabstop=4 expandtab


" Enable mouse 
set mouse=a

" Disable arrow keys
noremap <Left> <Nop>
noremap <Right> <Nop>
noremap <Down> <Nop>
noremap <Up> <Nop>

" Use different cursors for different modes
" *This is specifically configured for tmux. if you aren't using tmux, this shouldn't be used
" let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
" let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
" let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"

" For terminal/kitty on macOS
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

set ttimeout
set ttimeoutlen=0
set listchars=tab:>-,trail:~,extends:>,precedes:<,space:.
set ttyfast

" Add newline without leaving view mode
set timeoutlen=100
nmap oo o<Esc>k
nmap OO O<Esc>j

" Use spacebar as command prefix
nnoremap <SPACE> :

set visualbell
set noerrorbells

" Configuration for fzf-lua
nnoremap <c-P> <cmd>lua require('fzf-lua').files()<CR>

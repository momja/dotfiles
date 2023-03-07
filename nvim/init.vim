" ____  _   _ ____  _____ ______     _____ __  __ 
"/ ___|| | | |  _ \| ____|  _ \ \   / /_ _|  \/  |
"\___ \| | | | |_) |  _| | |_) \ \ / / | || |\/| |
" ___) | |_| |  __/| |___|  _ < \ V /  | || |  | |
"|____/ \___/|_|   |_____|_| \_\ \_/  |___|_|  |_|
"
" Max Omdal's (Neo)Vim Configuration File
                                                 
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
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <Down> <Nop> inoremap <Up> <Nop> vnoremap <Left> <Nop> vnoremap <Right> <Nop>
vnoremap <Down> <Nop>
vnoremap <Up> <Nop>

" COMMAND WINDOW
" --------------
" Faster command and search history access
nnoremap :: q:
nnoremap // q/
nnoremap ?? q?
set cmdwinheight=10
" END COMMAND WINDOW
" ------------------

" Use different cursors for different modes
" *This is specifically configured for tmux. if you aren't using tmux, this shouldn't be used
" let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
" let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
" let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
set ttimeout
set ttimeoutlen=0
set listchars=tab:>-,trail:~,extends:>,precedes:<,space:.
set ttyfast

set visualbell
set noerrorbells

" Configuration for fzf-lua
" nnoremap <c-P> <cmd>lua require('fzf-lua').files()<CR>

" KITTY
" -----
" For terminal/kitty on macOS
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"


" Configuration for kitty and vim navigation integration
let g:kitty_navigator_no_mappings = 1

map <silent> <C-h> :KittyNavigateLeft<cr>
map <silent> <C-j> :KittyNavigateDown<cr>
map <silent> <C-k> :KittyNavigateUp<cr>
map <silent> <C-l> :KittyNavigateRight<cr>

" Ignore Case
set ignorecase

" Working with markdown files
nnoremap gf = Ebgf

packadd! dracula
syntax enable
colorscheme dracula

" ---------
" END KITTY

" MARKDOWN
" --------
" Markdown related changes

" Set syntax to markdown by default when there is no extension
autocmd BufNewFile,BufRead * 
    \ if expand('%:t') !~ '\.' |
    \   if &ft =~# '^\%(conf\|modula2\)$' |
    \       set ft=markdown |
    \   else |
    \       setf markdown |
    \   endif |
    \ endif

set conceallevel=2
set autoindent

let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'text']

autocmd FileType markdown setlocal linebreak 

" Rebuild the notes directory
function RebuildTableOfContents()
    1,$d
    read !echo \`\`\`text
    read !figlet "NOTES CONTENT"
    read !echo \`\`\`
    read !rg --heading --no-column --no-line-number --max-count=1 .
endfunction

" ------------
" END MARKDOWN

" LUA
" ---
lua require("init")
" -------
" END LUA

" FUGITIVE
" --------
command GW w | Git add % | q

function! s:ToggleBlame()
    if &l:filetype ==# 'fugitiveblame'
        close
    else
        :G blame
    endif
endfunction

nnoremap <C-b> :call <SID>ToggleBlame()<CR>

" nnoremap <C-b> :G blame<CR>

" ------------
" END FUGITIVE

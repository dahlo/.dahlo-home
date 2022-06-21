"   ____ ___  _     ___  ____  ____  
"  / ___/ _ \| |   / _ \|  _ \/ ___| 
" | |  | | | | |  | | | | |_) \___ \ 
" | |__| |_| | |__| |_| |  _ < ___) |
"  \____\___/|_____\___/|_| \_\____/ 
"                                    
" COLORS

syntax enable           " syntax highliting
colorscheme monokai     " set color scheme




"  ___ _   _ ____  _____ _   _ _____  _  _____ ___ ___  _   _ 
" |_ _| \ | |  _ \| ____| \ | |_   _|/ \|_   _|_ _/ _ \| \ | |
"  | ||  \| | | | |  _| |  \| | | | / _ \ | |  | | | | |  \| |
"  | || |\  | |_| | |___| |\  | | |/ ___ \| |  | | |_| | |\  |
" |___|_| \_|____/|_____|_| \_| |_/_/   \_\_| |___\___/|_| \_|
"                                                             
" INDENTATION

filetype plugin indent on   " load filetype-specific indent files
set tabstop=4               " show existing tab with 4 spaces width
set shiftwidth=4            " when indenting with '>', use 4 spaces width
set expandtab               " On pressing tab, insert 4 spaces




"  _   _ ___ 
" | | | |_ _|
" | | | || | 
" | |_| || | 
"  \___/|___|
"            
" UI

set wildmenu                " visual autocomplete for command menu
set cursorline              " highlight current row
set lazyredraw              " avoid making the scrolling laggy
set number                  " show line numbers
set ttyfast                 " make it faster?
set showmatch               " highlight matching [{()}]
set undodir=~/.vim/undodir  " set undo dir path
set undofile                " Maintain undo history between sessions
set mouse=a                 " use the mouse to move the cursor


"  ____  _____    _    ____   ____ _   _ 
" / ___|| ____|  / \  |  _ \ / ___| | | |
" \___ \|  _|   / _ \ | |_) | |   | |_| |
"  ___) | |___ / ___ \|  _ <| |___|  _  |
" |____/|_____/_/   \_\_| \_\\____|_| |_|
"                                        
" SEARCH

set hlsearch     " highlight matches
set incsearch    " search as characters are entered




"  _  _________   ______ ___ _   _ ____  ____  
" | |/ / ____\ \ / / __ )_ _| \ | |  _ \/ ___| 
" | ' /|  _|  \ V /|  _ \| ||  \| | | | \___ \ 
" | . \| |___  | | | |_) | || |\  | |_| |___) |
" |_|\_\_____| |_| |____/___|_| \_|____/|____/ 
"                                              
" KEYBINDS

map <F5> <Esc><Esc>:set number!<CR>|         " toggle line number
map <F6> <Esc><Esc>:set paste!<CR>|          " toggle paste mode
map <F7> <Esc><Esc>:set wrap!<CR>|           " toggle line wrapping
map <F8> <Esc><Esc>::IndentLinesToggle<CR>|  " toggle indent lines
map <F9> :setlocal noexpandtab  shiftwidth=20 softtabstop=20  tabstop=20 <CR>
map <F10> :setlocal expandtab  shiftwidth=4 softtabstop=0  tabstop=4 <CR>

" move vertically by visual line
nnoremap j gj
nnoremap k gk




"  ____  _    _   _  ____ ___ _   _ ____  
" |  _ \| |  | | | |/ ___|_ _| \ | / ___| 
" | |_) | |  | | | | |  _ | ||  \| \___ \ 
" |  __/| |__| |_| | |_| || || |\  |___) |
" |_|   |_____\___/ \____|___|_| \_|____/ 
"                                         
" PLUGINS

" plugin manager
call plug#begin()
Plug 'preservim/NERDTree'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-commentary'
call plug#end()


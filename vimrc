"     _    ___ 
"    / \  |_ _|
"   / _ \  | | 
"  / ___ \ | | 
" /_/   \_\___|
"
" AI

let g:copilot_enable = 0                                " disabled by default
let g:copilot_filetypes = {'*': 0, 'python': 1, 'css': 1, 'php': 1, 'perl': 1, 'markdown': 1, 'go': 1, 'html': 1, 'java': 1, 'javascript': 1, 'julia': 1, 'lua': 1, 'make': 1, 'mf': 1, 'nginx': 1, 'apache': 1, 'quarto': 1, 'r': 1, 'rmd': 1, 'ruby': 1, 'rust': 1, 'scala': 1, 'screen': 1, 'sed': 1, 'scss': 1, 'services': 1, 'sh': 1, 'systemd': 1, 'tcl': 1, 'tex': 1, 'tmux': 1, 'typescript': 1, 'typescriptreact': 1, 'vim': 1, 'xmodmap': 1, } " only enabled on whitelisted file types
" let g:copilot_filetypes = {'*': v:false, 'python': v:true, 'css': v:true, 'php': v:true, 'perl': v:true, 'markdown': v:true, 'go': v:true, 'html': v:true, 'java': v:true, 'javascript': v:true, 'julia': v:true, 'lua': v:true, 'make': v:true, 'mf': v:true, 'nginx': v:true, 'apache': v:true, 'quarto': v:true, 'r': v:true, 'rmd': v:true, 'ruby': v:true, 'rust': v:true, 'scala': v:true, 'screen': v:true, 'sed': v:true, 'scss': v:true, 'services': v:true, 'sh': v:true, 'systemd': v:true, 'tcl': v:true, 'tex': v:true, 'tmux': v:true, 'typescript': v:true, 'typescriptreact': v:true, 'vim': v:true, 'xmodmap': v:true, '': v:true, } " only enabled on whitelisted file types

nnoremap <F1> :call ToggleCopilot()<CR>                 " bind key to toggle function
function! ToggleCopilot()                               " function to toggle
    if exists("g:copilot_enable") && g:copilot_enable
        let g:copilot_enable = 0
        echo "Copilot disabled"
    else
        let g:copilot_enable = 1
        echo "Copilot enabled"
    endif
endfunction      


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
set encoding=utf-8          " use utf-8

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

map <F3> <Esc><Esc>:set spell!<CR>|          " toggle spell checker
map <F5> <Esc><Esc>:set number!<CR>|         " toggle line number
map <F6> <Esc><Esc>:set paste!<CR>|          " toggle paste mode
map <F7> <Esc><Esc>:set wrap!<CR>|           " toggle line wrapping
map <F8> <Esc><Esc>::IndentLinesToggle<CR>|  " toggle indent lines
map <F9> :setlocal noexpandtab  shiftwidth=20 softtabstop=20  tabstop=20 <CR>
map <F10> :setlocal expandtab  shiftwidth=4 softtabstop=0  tabstop=4 <CR>
map <F11> <Esc><Esc>:%s/\n\n/\r/g<CR>|       " removes extra newlines after pasting code

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


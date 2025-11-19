"     _    ___ 
"    / \  |_ _|
"   / _ \  | | 
"  / ___ \ | | 
" /_/   \_\___|
"
" AI

" only enabled on whitelisted file types
let g:copilot_filetypes = {
  \ '*': v:false,
  \ 'apache': v:true,
  \ 'cs': v:true,
  \ 'css': v:true,
  \ 'go': v:true,
  \ 'html': v:true,
  \ 'java': v:true,
  \ 'javascript': v:true,
  \ 'julia': v:true,
  \ 'lua': v:true,
  \ 'make': v:true,
  \ 'markdown': v:true,
  \ 'mf': v:true,
  \ 'nginx': v:true,
  \ 'perl': v:true,
  \ 'php': v:true,
  \ 'python': v:true,
  \ 'quarto': v:true,
  \ 'r': v:true,
  \ 'rmd': v:true,
  \ 'ruby': v:true,
  \ 'rust': v:true,
  \ 'scala': v:true,
  \ 'screen': v:true,
  \ 'scss': v:true,
  \ 'sed': v:true,
  \ 'services': v:true,
  \ 'sh': v:true,
  \ 'systemd': v:true,
  \ 'tcl': v:true,
  \ 'tex': v:true,
  \ 'tmux': v:true,
  \ 'typescript': v:true,
  \ 'typescriptreact': v:true,
  \ 'vim': v:true,
  \ 'xmodmap': v:true,
  \ }


"disabled by default
autocmd VimEnter * Copilot disable

" function to toggle copilot 
let g:copilot_enabled = 0
function! ToggleCopilot()
    if exists("g:copilot_enabled") && g:copilot_enabled
        let g:copilot_enabled = 0
        echo "Copilot disabled"
    else
        let g:copilot_enable = 1
        echo "Copilot enabled"
    endif
endfunction
nnoremap <F2> :call ToggleCopilot()<CR>                 " bind key to toggle function

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
set conceallevel=0          " show all characters (e.g., in markdown)

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
autocmd BufRead,BufNewFile *.qmd set filetype=markdown
autocmd FileType markdown if expand('%:e') == 'qmd' | let g:indentLine_enabled=0 | endif


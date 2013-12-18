set nocompatible                        " Use vim settings instead of vi compatible settings

set title                               " Show the filename in the window titlebar
set number                              " Enable line numbers
set showmode                            " Show the current mode
set list                                " Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_

set showcmd                             " Show the (partial) command as it’s being typed
set wildmenu                            " Enhance command-line completion

set cursorline                          " Highlight current line
set scrolloff=5                         " Start scrolling 5 lines before the horizontal window border
set mouse=a                             " Enable mouse in all modes
set backspace=indent,eol,start          " Allow backspace in insert mode

set autoindent                          " always set autoindenting on
set copyindent                          " copy the previous indentation on autoindenting
set tabstop=4                           " Make tabs as wide as four spaces
set shiftwidth=4

set ignorecase                          " Ignore case of searches
set smartcase                           " ignore case if search pattern is all lowercase, case-sensitive otherwise
set hlsearch                            " Highlight searches
set incsearch                           " Highlight dynamically as pattern is typed

set encoding=utf-8 nobomb               " Use UTF-8 without BOM

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
    set undodir=~/.vim/undo
endif

" Enable syntax highlighting
syntax on
colorscheme molokai

" Enable file type detection
filetype plugin indent on

" Strip trailing whitespace (\ss)
function! StripWhitespace()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    :%s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>

" Save a file as root (\W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>

" Automatic commands
if has("autocmd")
    " Treat .json files as .js
    autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
endif

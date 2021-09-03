"SENSIBLE DEFAULTS:
set nocompatible
set ttimeout
set ttimeoutlen=100
set history=200
set wildmode=longest,list,full
set hlsearch
set incsearch
set tabstop=4
set softtabstop=4
set expandtab
set noshowmode
set showcmd
set number relativenumber
set splitbelow splitright
set undofile
set mouse=a
map Q gq
filetype plugin indent on
syntax on

"SETTINGS:
autocmd BufReadPost *
 \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
 \ |   exe "normal! g`\""
 \ | endif
autocmd BufWritePre * %s/\s\+$//e
autocmd BufRead,BufNewFile */i3/config set filetype=i3config
if has('win32') || has('win64')
    set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
    set undodir=$HOME/.vim/undo
    set backspace=indent,eol,start
    set laststatus=2
    set ruler
endif

"PLUGINS:
call plug#begin('$HOME/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'mboughaba/i3config.vim'
Plug 'morhetz/gruvbox'
Plug 'nanotech/jellybeans.vim'
call plug#end()

"MAPPINGS:
let mapleader=' '
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <leader>s :nohlsearch <Enter>

"APPEARANCE:
set termguicolors
set background=dark
if has('gui_running')
    if has('gui_gtk')
        set guifont=Inconsolata\ Regular\ 13
    elseif has('gui_win32') || has('gui_win64')
        set guifont=Cascadia\ Code\ Pl:h11
        au GUIEnter * simalt ~x
    endif
else
    au VimEnter * hi Normal guibg=NONE ctermbg=NONE
    au VimEnter * hi LineNr guibg=NONE ctermbg=NONE
    let g:jellybeans_overrides = {'background': { 'guibg': 'none', 'ctermbg': 'none', '256ctermbg': 'none' }}
endif
let g:airline_powerline_fonts=1
let g:airline_symbols = {'maxlinenr': ' '}
"let g:airline#extensions#tabline#enabled=1
"let g:airline_theme='base16_vim'
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox

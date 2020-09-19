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
"set clipboard=unnamedplus
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

"PLUGINS:
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdtree'
Plug 'mboughaba/i3config.vim'
Plug 'morhetz/gruvbox'
Plug 'nanotech/jellybeans.vim'
call plug#end()

"MAPPINGS:
let mapleader=" "
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <leader>s :nohlsearch <Enter>
map <leader>n :NERDTreeToggle <CR>

"APPEARANCE:
set termguicolors
set background=dark
if has("gui_running")
    set guifont=Inconsolata\ Regular\ 12
else
    au VimEnter * hi Normal guibg=NONE ctermbg=NONE
    au VimEnter * hi LineNr guibg=NONE ctermbg=NONE
    let g:jellybeans_overrides = {'background': { 'guibg': 'none', 'ctermbg': 'none', '256ctermbg': 'none' }}
endif
let g:NERDTreeDirArrowExpandable=''
let g:NERDTreeDirArrowCollapsible=''
let g:airline_powerline_fonts=1
let g:airline_symbols = {'maxlinenr': ' '}
"let g:airline#extensions#tabline#enabled=1
"let g:airline_theme='base16_vim'
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox

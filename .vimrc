" 0. User Cfg

set nu 
set cursorline
set cursorcolumn
set showmatch
set tabstop=4
set shiftwidth=4
set autoindent
set expandtab
set softtabstop=4
set laststatus=2
set ruler
set encoding=utf-8
set textwidth=80
set scrolloff=5
set sidescrolloff=15
set hlsearch
set incsearch
set ignorecase
set smartcase
set autochdir
set visualbell
set autoread

syntax enable 
filetype indent on

" 1. Vim-Plug List
call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'apzelos/blamer.nvim'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'yggdroot/indentline'

call plug#end()

" 2. NERDTree Cfg
let g:NERDTreeShowHidden = 1
nnoremap <F1> :NERDTreeFind <CR>
nnoremap <F2> :NERDTreeToggle <CR>

" 3. Blamer Cfg
let g:blamer_enabled = 1
let g:blamer_delay = 500
let g:blamer_show_in_visual_modes = 0
let g:blamer_show_in_insert_modes = 0
let g:blamer_prefix = ' > '
let g:blamer_relative_time = 1

" 4. Gruvbox Cfg
set termguicolors
set bg=dark
let g:gruvbox_contrast_dark = 'hard'
autocmd vimenter * ++nested colorscheme gruvbox

" 5. Airline Cfg
let g:airline_theme = 'gruvbox'
let g:airline#extensions#tabline#enabled = 1

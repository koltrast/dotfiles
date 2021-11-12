" ---   Remaps

source ~/.config/nvim/vimrc.bepo
"source ~/.vim/vimrc.bepo


" ---   Plugins

call plug#begin('~/.local/share/nvim/plugged')
"call plug#begin('~/.vim/plugged')

" General

Plug 'junegunn/goyo.vim'
Plug 'vim-airline/vim-airline'
Plug 'lervag/vimtex'
Plug 'junegunn/limelight.vim'
"Plug 'dylanaraps/fff.vim'
"Plug 'dhruvasagar/vim-table-mode'
"Plug 'arcticicestudio/nord-vim'
"Plug 'junegunn/seoul256.vim'

call plug#end()


" --- Colors

"colorscheme nord
"colorscheme wal 	  " set colorscheme
set background=dark
set termguicolors
set t_Co=256            " enable 256-color mode.



""""""""""""""""
"   Behaviour  "
""""""""""""""""
set ignorecase		" Case insensitive search
set smartcase		" Case sensisive if search terms contains capitals
set linebreak		" Allow linebreaks between words
set scrolloff=2		" Start scrolling a few lines from the border
set encoding=utf8	" Use utf8 as internal encoding
set mouse=a 		" Allow mouse control in all modes

"""""""""""""""""
"   Formating   "
"""""""""""""""""
set textwidth=79
"au BufRead /tmp/mutt-* set tw=72
"au BufRead /tmp/mutt-* set spell spelllang:fr
au BufRead *.csv set tw=0
set tabstop=4		" Witdh of the tab charater
set softtabstop=4	" How many columns the tab key inserts
set shiftwidth=4	" Width of 1 indentation level
set expandtab		" Expand taps into spaces
set smartindent		" Smart C-like autoindenting
filetype indent on      " activates indenting for files

" Determine indentation rules by filetype
filetype plugin indent on

" ---  Interface 

set number              " show line numbers
"set relativenumber    "line numbers are relative to the cursors
syntax enable           " enable syntax highlighting (previously syntax on).
set laststatus=2        " last window always has a statusline
set nohlsearch          " Don't continue to highlight searched phrases.
set incsearch           " But do highlight as you type your search.
set ignorecase          " Make searches case-insensitive.
set ruler               " Always show info along bottom.
set colorcolumn=80	" Highlight the 80th column
"au BufRead /tmp/mutt-* set colorcolumn=72
au BufRead *.csv set colorcolumn=0
set nowrap

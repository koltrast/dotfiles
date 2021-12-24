" --- External sources

source ~/.config/nvim/vimrc.bepo


" --- General

set ignorecase		    " Case insensitive search
set smartcase		    " Case sensisive if search terms contains capitals
set linebreak		    " Allow linebreaks between words
set scrolloff=2		    " Start scrolling a few lines from the border
set encoding=utf8	    " Use utf8 as internal encoding
set mouse=a 		    " Allow mouse control in all modes
set number              " show line numbers
"set relativenumber      " line numbers are relative to the cursors
set laststatus=2        " last window always has a statusline
set nohlsearch          " Don't continue to highlight searched phrases.
set incsearch           " But do highlight as you type your search.
set ignorecase          " Make searches case-insensitive.
set ruler               " Always show info along bottom.
set colorcolumn=80	    " Highlight the 80th column
set textwidth=79
set nowrap
set termguicolors
set tabstop=4		    " Witdh of the tab charater
set softtabstop=4	    " How many columns the tab key inserts
set shiftwidth=4	    " Width of 1 indentation level
set expandtab		    " Expand taps into spaces
set smartindent		    " Smart C-like autoindenting
set encoding=UTF-8

filetype indent on      " activates indenting for files
syntax enable           " enable syntax highlighting (previously syntax on).

au BufRead /tmp/mutt-* set tw=72
au BufRead /tmp/mutt-* set spell spelllang:fr
au BufRead /tmp/mutt-* set colorcolumn=72
au BufRead *.csv set colorcolumn=0
au BufRead *.csv set tw=0


" --- Plugins

call plug#begin('~/.local/share/nvim/plugged')

" General
Plug 'nvim-lualine/lualine.nvim'        " Status line
Plug 'kyazdani42/nvim-web-devicons'     " Devicons
Plug 'junegunn/goyo.vim'                " No-distraction mode
Plug 'junegunn/limelight.vim'           " highlight current line
Plug 'akinsho/bufferline.nvim'          " Buffers
Plug 'kyazdani42/nvim-tree.lua'                    " File explorer
Plug 'folke/tokyonight.nvim', { 'branch': 'main' } " Color scheme
" Git
Plug 'tpope/vim-fugitive'
Plug 'lewis6991/gitsigns.nvim'
" Misc
Plug 'lervag/vimtex'
Plug 'tidalcycles/vim-tidal'

call plug#end()

lua require('koltrast')

let g:tidal_target = "terminal"
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1

" --- Colors

colorscheme tokyonight
set background=dark

" --- System & general configuration
set nocompatible              		" disable compatibility to old-time vi
filetype plugin indent on     		" allow auto-indenting depending on file type
syntax enable                     	" syntax highlighting
set showmatch                 		" show matching 
set ignorecase                		" case insensitive 


" --- Keybinding 
let mapleader = ","                " Map the leader key to ','

" --- Backup of files
set nobackup                        " Some servers have issues with backup of files, see #649
set nowritebackup


" --- Search options
set hlsearch                  		" highlight search 
set incsearch                 		" incremental search

" --- System clipboard
set clipboard=unnamedplus     		" using system clipboard

" --- Mouse support 
set mouse=a                   		" enable mouse click
set mouse=v                   		" middle-click paste with


" --- Tabs size
set tabstop=4                 		" number of columns occupied by a tab 
set softtabstop=4             		" see multiple spaces as tabstops so <BS> does the right thing
set expandtab                 		" converts tabs to white space
set shiftwidth=4              		" width for autoindents
set autoindent                		" indent a new line the same amount as the line just typed


" --- Plugins
call plug#begin('~/.config/nvim/plugged/')
 Plug 'folke/tokyonight.nvim', { 'branch': 'main'}  " Tokyonight color scheme
 Plug 'arcticicestudio/nord-vim'                    " Nord color scheme
 Plug 'dracula/vim'                                 " Dracula color scheme

 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'SirVer/ultisnips'
 Plug 'honza/vim-snippets'
 
 Plug 'tpope/vim-surround'
 Plug 'preservim/nerdcommenter'
 Plug 'tpope/vim-fugitive'
 
 Plug 'mhinz/vim-startify'
 Plug 'vim-airline/vim-airline'
 Plug 'vim-airline/vim-airline-themes'
 Plug 'scrooloose/nerdtree'
 Plug 'simrat39/symbols-outline.nvim'
 Plug 'airblade/vim-gitgutter'

 Plug 'ryanoasis/vim-devicons'                      " Support for icons in NERDTree
 
 Plug 'fladson/vim-kitty'
call plug#end()

" --- Plugins Configuration
" --> Airline
let g:airline_powerline_fonts = 1

" --> NERDtree
"let g:webdevicons

" --> Coc
" --> Ultisnips
" --> vim-snippets
" --> vim-surround
" --> nerdcommenter
" --> vim-gitgutter
" --> symbols-outline


" --- Colors 
if (has('termguicolors'))
  set termguicolors
endif

" --> colorscheme Tokyo Night 
let g:tokyonight_style = "storm"
colorscheme tokyonight
" --> colorscheme Nord Vim
let g:airline#extensions#tabline#enabled = 1
colorscheme nord


" --- Interface
set cmdheight=2                     " Give more space for commands
set wildmode=longest,list     		" get bash-like tab completions
set wildmenu
set title

" -- splits & panes
set splitright 				        " open new split panes to right and below
set splitbelow

" --- Line numbering, cursor & current line
set number                    		" add line numbers
set relativenumber			        " use relative numbering for line
set cursorline                		" highlight current cursorline

" Always show the signcolumn, otherwise it would shift the text each time diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564") " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" --- Scrolling & bars
set ttyfast                   		" Speed up scrolling in Vim




" Options
" set completeopt=noinsert,menuone,noselect
" set inccommand=split
" set ttimeoutlen=0

" -- Miscelaneous options
" set spell                   " enable spell check (may need to download language package)
" set noswapfile              " disable creating swap file
" set backupdir=~/.cache/vim  " Directory to store backup files.

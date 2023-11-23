"-- don't let defaults do stuff--
unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

"-- No vi --
set nocompatible

"-- Enable plugins
filetype plugin on

"-- Fuzzy finder
set path+=**

"-- Show available tab completes
set wildmenu

"-- auto complete
set completeopt=menuone,longest
set shortmess+=c

"-- tag jumping
command! MakeTags !ctags -R . 

"-- Indentation and Line -- 
syntax on
set number
set relativenumber
set tabstop=4
set softtabstop=4
set expandtab
set autoindent
set shiftwidth=4
set textwidth=79

"-- Colour column --
set colorcolumn=80

"-- Status bar --
set laststatus=2

"-- Encoding -- 
set encoding=utf-8

"-- Last line -- 
set showmode
set showcmd

"-- Plugins
call plug#begin()

" Nerd tree
Plug 'preservim/nerdtree'

" Colour schemes
Plug 'junegunn/seoul256.vim'
Plug 'dracula/vim'
Plug 'morhetz/gruvbox'

" Autocomplete
Plug 'vim-scripts/AutoComplPop'

call plug#end()

"-- Set colour scheme --
:colorscheme gruvbox
hi Normal guibg=NONE ctermbg=NONE

" for surrounding
vmap s S

" Nerd Tree remaps
nnoremap <C-t> :NERDTreeToggle<CR>
